/*****************************************************************************
 * Student Name:    Oved Nagar                                               *
 * Id:              302824875                                                *
 * Exercise name:   Ex1                                                      *
 * File description: This file contains the Board Class header               *
 ****************************************************************************/

#ifndef OTHELLO_PLAYGROUND_H
#define OTHELLO_PLAYGROUND_H

#include "Player.h"
#include "Reversi.h"

class PlayGround {
    enum menue {NEW_PLAYER = 1, NEW_GAME = 2, EXIT = 3};
    enum games {REVERSI = 1};
    vector<Player *> players;

    /*****************************************************************************
     * Function name: addPlayer                                                  *
     * Operation: the function asks from the user to enter new Player            *
     ****************************************************************************/
    void addPlayer();

    /*****************************************************************************
     * Function name: startGame                                                  *
     * Operation: asks from user to choose a game and stars the game             *
     ****************************************************************************/
    void startGame();

    /*****************************************************************************
     * Function name: startReversiGame                                           *
     * Operation: creates reversi object and starts the game                     *
     ****************************************************************************/
    void startReversiGame();

    /*****************************************************************************
     * Function name: getPlayerByID                                              *
     * Output: returns ptr for player by his ID                                  *
     ****************************************************************************/
    Player *getPlayerByID(int id);
public:
    /*****************************************************************************
     * Function name: default constructor                                        *
     * operation: creates first player - computer (ID = 1)                       *
     ****************************************************************************/
    PlayGround(){
        // creating Computer User
        players.push_back(new Player("Computer", true));
    };

    /*****************************************************************************
     * Function name: default destructor                                         *
     ****************************************************************************/
    ~PlayGround();

    /*****************************************************************************
     * Function name: go                                                         *
     * Operation: shows th Main Menu                                             *
     ****************************************************************************/
    void go();

};


#endif //OTHELLO_PLAYGROUND_H