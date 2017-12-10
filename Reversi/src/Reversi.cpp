/*****************************************************************************
 * Student Name:    Oved Nagar                                               *
 * Id:              302824875                                                *
 * Student Name:    Orly Paknahad                                            *
 * Id:              315444646                                                *
 * Exercise name:   Ex3                                                      *
 ****************************************************************************/

#include "../include/Reversi.h"

/*****************************************************************************
 * Function name: play                                                       *
 * Input: RevesiPlayer - player (not Player)                                 *
 * Output: play move for requested player                                    *
 ****************************************************************************/
bool Reversi::play(ReversiPlayer *player, int lastMove[2]){
    // try request move from player
    try {
        player->playReversiMove(lastMove, board);
    }
    catch (const char *msg){
        throw msg;
    }
        // no legal move
    if (lastMove[0] == -1)
        return false;
    // Play the requested move
    board->playColor(lastMove[0],lastMove[1],player->getColor());
    return true;
}

/*****************************************************************************
 * Function name: startGame                                                  *
 * Input: override method for Game "Interface" - starting game               *
 ****************************************************************************/
void Reversi::startGame(){
    ReversiPlayer *black, *white;
    // get black and white players
    if (player1->getColor()) {
        black = player1;
        white = player2;
    }
    else{
        black = player2;
        white = player1;
    }

    // game flow....
    int lastMove[2] = {0, 0};
    bool gameOver = false, blackCanPlay = true, whiteCanPlay = false;
    while(!gameOver){

        // black player turn
        cout << endl << *board << endl;
        blackCanPlay = true;
        // try playing move - quit game if not successful
        try {
            blackCanPlay = play(black, lastMove);
            white->sendLastMove(lastMove);
        }
        catch(const char *msg){
            cout << endl << " GAME CRASHED" << endl;
            cout << endl << msg << endl << endl;
            return;
        }
        // if both cant play in a single round then GAME-OVER
        if(!blackCanPlay && !whiteCanPlay) {
            gameOver = true;
            break;
        }

        cout << endl << *board << endl;
        // try playing move - quit game if not successful
        try{
        whiteCanPlay = true;
        whiteCanPlay = play(white, lastMove);
        black->sendLastMove(lastMove);
        }
        catch(const char *msg){
            cout << endl << " GAME CRASHED" << endl;
            cout << endl << msg << endl << endl;
            return;
        }

        // if both cant play in a single round then GAME-OVER
        if(!blackCanPlay && !whiteCanPlay) {
            gameOver = true;
            break;
        }
    }
    try {
        // inform players that the game is over
        black->gameOver();
        white->gameOver();
    }
    catch(const char *msg){
        cout << endl << "Error closing connection";
    }
    // GAME OVER !!
    cout << endl << endl;
    cout << "------------------------------------------------------------------";
    cout << endl << endl;
    // check which player is the winner and print results
    ReversiPlayer *winner, *loser;
    int score1 = board->score(Board::WHITE), score2 = board->score(Board::BLACK);
    if (score1 > score2) {
        winner = white;
        loser = black;
    }
    else if (score1 < score2) {
        winner = black;
        loser = white;
    }
    else{
        cout << "Tie! there is no winner" << endl;
        return;
    }
    ++(*winner->getPlayer());
    ++(*loser->getPlayer());
    cout << "The winner is:" << endl << *winner->getPlayer() << endl;
};


/*****************************************************************************
 * Function name: connectServer                                              *
 * operation: the function establishes a connection with the game's server   *
 ****************************************************************************/
void Reversi::connectServer() {
    // getting information about server's address from the server_address.txt file
    ifstream addressFile;
    addressFile.open("../server_info/server_address.txt");
    string key, stringServerIP;
    int serverPort;
    addressFile >> key >> stringServerIP;
    addressFile >> key >> serverPort;
    const char *serverIP = stringServerIP.c_str();

    // init socket as internet TCP
    clientSocket = socket(AF_INET, SOCK_STREAM, 0);
    if (clientSocket == -1)
        throw "Error - cant open socket for client";

    // convert ip string from string to binary form
    struct in_addr server_address;
    if (!inet_aton(serverIP, &server_address))
        throw "Error - cant convert IP address";

    // get hostnet struct using the IP address of the server
    struct hostent *server = gethostbyaddr((const void *)&server_address, sizeof(server_address), AF_INET);
    if(server == NULL)
        throw "Error - cant get hostnent for IP address";

    // initiate serverAddress sockaddr_in
    struct sockaddr_in serverAddress;
    bzero((char *)&serverAddress, sizeof(serverAddress));
    memcpy((char *)&serverAddress.sin_addr.s_addr, (char *)server->h_addr, server->h_length);
    serverAddress.sin_port = htons(serverPort);
    serverAddress.sin_family = AF_INET;

    // try connecting to server
    if (connect(clientSocket, (struct sockaddr *)&serverAddress, sizeof(serverAddress)) == -1)
        throw "Error - cant connect to server";

    cout << "connected to server" << endl;
}


/*****************************************************************************
 * Function name: initPlayer                                                 *
 * operation: the function initiate a reversiPlayer object acording to       *
 * player type                                                               *
 ****************************************************************************/
void Reversi::initPlayer(int playerNum, Player *player, bool color) {
    int type = player->getPlayerType();
    switch (type){
        case Player::LOCAL_PLAYER:
            if (playerNum == 1)
                player1 = new ReversiLocalPlayer(player, color);
            else
                player2 = new ReversiLocalPlayer(player, color);
            break;
        case Player::PC:
            if (playerNum == 1)
                player1 = new ReversiPcPlayer(player, color);
            else
                player2 = new ReversiPcPlayer(player, color);
            break;
        case Player::ONLINE_PLAYER:
            if (playerNum == 1)
                player1 = new ReversiOnlinePlayer(player, color, clientSocket);
            else
                player2 = new ReversiOnlinePlayer(player, color, clientSocket);
            break;
        default:
            if (playerNum == 1)
                player1 = new ReversiLocalPlayer(player, color);
            else
                player2 = new ReversiLocalPlayer(player, color);

    }
}


/*****************************************************************************
 * Function name: default constructor - initiate connection players and board*
 ****************************************************************************/
Reversi::Reversi(Player *firstPlayer, Player *seconedPlayer, int rowSize, int colSize){
    bool secondLocalPlayerColor = Board::WHITE;
    int finalSize = rowSize;
    // only the first player can be online_player/PC
    if (seconedPlayer->getPlayerType() == Player::ONLINE_PLAYER || seconedPlayer->getPlayerType() == Player::PC)
        throw "Error - Player 2 cant be online player";

    // if online game connect to server and get colors for the players
    if (firstPlayer->getPlayerType() == Player::ONLINE_PLAYER) {
        // connect to server to get messages from the online player
        cout << "connecting to server ..." << endl;
        try {
            connectServer();
        }
        catch(const char *msg){
            throw msg;
        }
        cout << "connected!" << endl;

        stringstream temp;
        char finalSize_c[8];
        temp << rowSize;
        // request for board game size
        if ( write(clientSocket, temp.str().c_str(), 8) == -1 )
            throw "Error - cant send board size to server";
        if ( read(clientSocket, finalSize_c, 8) == -1 )
            throw "Error - cant read board size from server";
        finalSize = atoi(finalSize_c);

        cout << "waiting for other player to join..." << endl;
        // get player color
        char color_c;
        read(clientSocket, &color_c, 1);
        cout << "second player connected!"<< endl;
        if (color_c == '1')
            secondLocalPlayerColor = Board::BLACK;
        else
            secondLocalPlayerColor = Board::WHITE;


    }
    try {
        // init first player
        initPlayer(1, firstPlayer, !secondLocalPlayerColor);
        // init second player
        initPlayer(2, seconedPlayer, secondLocalPlayerColor);
        // create board with available size
        board = new Board(finalSize, finalSize);
    }
    catch(const char *msg){
        throw msg;
    }
};