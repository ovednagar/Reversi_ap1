/*****************************************************************************
 * Student Name:    Oved Nagar                                               *
 * Id:              302824875                                                *
 * Student Name:    Orly Paknahad                                            *
 * Id:              315444646                                                *
 * Exercise name:   Ex3                                                      *
 ****************************************************************************/


#include "gtest/gtest.h"
#include "../include/Board.h"


// test board constructor
TEST(Board_constructor, legal_values){
    Board board = Board();
    EXPECT_EQ(board.getCols(), 8);
    EXPECT_EQ(board.getRows(), 8);

    board = Board(6, 6);
    EXPECT_EQ(board.getCols(), 6);
    EXPECT_EQ(board.getRows(), 6);

    board = Board(2, 2);
    EXPECT_EQ(board.getCols(), 2);
    EXPECT_EQ(board.getRows(), 2);
}

TEST(Board_constructor, illegal_values){
    Board board = Board(1, 1);
    EXPECT_EQ(board.getCols(), 8);
    EXPECT_EQ(board.getRows(), 8);

    board = Board(-5, -1);
    EXPECT_EQ(board.getCols(), 8);
    EXPECT_EQ(board.getRows(), 8);
}

TEST(Board_constructor, colors){
    // 1 Black
    // 0 white
    Board board = Board();
    EXPECT_EQ(board.getColor(4, 4), Board::WHITE);
    EXPECT_EQ(board.getColor(5, 5), Board::WHITE);
    EXPECT_EQ(board.getColor(4, 5), Board::BLACK);
    EXPECT_EQ(board.getColor(5, 4), Board::BLACK);

    board = Board(12, 4);
    EXPECT_EQ(board.getColor(6, 2), Board::WHITE);
    EXPECT_EQ(board.getColor(7, 3), Board::WHITE);
    EXPECT_EQ(board.getColor(6, 3), Board::BLACK);
    EXPECT_EQ(board.getColor(7, 2), Board::BLACK);
}

TEST(Board_play, legal_moves){
    Board board = Board();

    board.playColor(3, 4, Board::BLACK);
    EXPECT_EQ(board.getColor(3, 4), Board::BLACK);
    EXPECT_EQ(board.getColor(4, 4), Board::BLACK);
    EXPECT_EQ(board.getColor(5, 4), Board::BLACK);

    board.playColor(3, 3, Board::WHITE);
    EXPECT_EQ(board.getColor(3, 3), Board::WHITE);
    EXPECT_EQ(board.getColor(4, 4), Board::WHITE);
    EXPECT_EQ(board.getColor(5, 5), Board::WHITE);

    board.playColor(6, 5, Board::BLACK);
    EXPECT_EQ(board.getColor(4, 5), Board::BLACK);
    EXPECT_EQ(board.getColor(5, 5), Board::BLACK);
    EXPECT_EQ(board.getColor(6, 5), Board::BLACK);

    board.playColor(3, 5, Board::WHITE);
    EXPECT_EQ(board.getColor(3, 5), Board::WHITE);
    EXPECT_EQ(board.getColor(3, 4), Board::WHITE);
    EXPECT_EQ(board.getColor(3, 3), Board::WHITE);
    EXPECT_EQ(board.getColor(4, 4), Board::WHITE);

    board.playColor(2, 3, Board::BLACK);
    EXPECT_EQ(board.getColor(2, 3), Board::BLACK);
    EXPECT_EQ(board.getColor(3, 4), Board::BLACK);
    EXPECT_EQ(board.getColor(4, 5), Board::BLACK);

    board.playColor(2, 4, Board::WHITE);
    EXPECT_EQ(board.getColor(2, 4), Board::WHITE);
    EXPECT_EQ(board.getColor(3, 4), Board::WHITE);
    EXPECT_EQ(board.getColor(4, 4), Board::WHITE);

    board.playColor(4, 3, Board::BLACK);
    EXPECT_EQ(board.getColor(3, 3), Board::BLACK);
    EXPECT_EQ(board.getColor(4, 4), Board::BLACK);
    EXPECT_EQ(board.getColor(4, 3), Board::BLACK);
    EXPECT_EQ(board.getColor(4, 5), Board::BLACK);
    EXPECT_EQ(board.getColor(2, 3), Board::BLACK);

}

TEST(Board_play, illegal_moves){
    Board board = Board();
    // out of range
    board.playColor(-1, -1, Board::BLACK);
    board.playColor(9, 7, Board::BLACK);
    board.playColor(3, 10, Board::BLACK);

    EXPECT_EQ(board.getColor(4, 4), Board::WHITE);
    EXPECT_EQ(board.getColor(5, 5), Board::WHITE);
    EXPECT_EQ(board.getColor(4, 5), Board::BLACK);
    EXPECT_EQ(board.getColor(5, 4), Board::BLACK);

    // on edge of same color
    board.playColor(3, 3, Board::BLACK);
    board.playColor(6, 6, Board::BLACK);
    board.playColor(3, 5, Board::BLACK);
    board.playColor(3, 6, Board::BLACK);
    board.playColor(4, 6, Board::BLACK);
    board.playColor(6, 3, Board::BLACK);
    board.playColor(7, 3, Board::BLACK);
    board.playColor(7, 4, Board::BLACK);

    EXPECT_EQ(board.getColor(4, 4), Board::WHITE);
    EXPECT_EQ(board.getColor(5, 5), Board::WHITE);
    EXPECT_EQ(board.getColor(4, 5), Board::BLACK);
    EXPECT_EQ(board.getColor(5, 4), Board::BLACK);

    // other illegal moves
    board.playColor(1, 1, Board::BLACK);
    board.playColor(8, 8, Board::BLACK);
    board.playColor(7, 7, Board::BLACK);
    board.playColor(6, 2, Board::BLACK);
    board.playColor(3, 7, Board::BLACK);

    // check that the board is empty
    EXPECT_EQ(board.getColor(4, 4), Board::WHITE);
    EXPECT_EQ(board.getColor(5, 5), Board::WHITE);
    EXPECT_EQ(board.getColor(4, 5), Board::BLACK);
    EXPECT_EQ(board.getColor(5, 4), Board::BLACK);
    EXPECT_EQ(board.isColred(1, 1), false);
    EXPECT_EQ(board.isColred(1, 2), false);
    EXPECT_EQ(board.isColred(1, 3), false);
    EXPECT_EQ(board.isColred(1, 4), false);
    EXPECT_EQ(board.isColred(1, 5), false);
    EXPECT_EQ(board.isColred(1, 6), false);
    EXPECT_EQ(board.isColred(1, 7), false);
    EXPECT_EQ(board.isColred(1, 8), false);
    EXPECT_EQ(board.isColred(2, 1), false);
    EXPECT_EQ(board.isColred(2, 2), false);
    EXPECT_EQ(board.isColred(2, 3), false);
    EXPECT_EQ(board.isColred(2, 4), false);
    EXPECT_EQ(board.isColred(2, 5), false);
    EXPECT_EQ(board.isColred(2, 6), false);
    EXPECT_EQ(board.isColred(2, 7), false);
    EXPECT_EQ(board.isColred(2, 8), false);
    EXPECT_EQ(board.isColred(3, 1), false);
    EXPECT_EQ(board.isColred(3, 2), false);
    EXPECT_EQ(board.isColred(3, 3), false);
    EXPECT_EQ(board.isColred(3, 4), false);
    EXPECT_EQ(board.isColred(3, 5), false);
    EXPECT_EQ(board.isColred(3, 6), false);
    EXPECT_EQ(board.isColred(3, 7), false);
    EXPECT_EQ(board.isColred(3, 8), false);

    EXPECT_EQ(board.isColred(4, 1), false);
    EXPECT_EQ(board.isColred(4, 2), false);
    EXPECT_EQ(board.isColred(4, 3), false);
    EXPECT_EQ(board.isColred(4, 6), false);
    EXPECT_EQ(board.isColred(4, 7), false);
    EXPECT_EQ(board.isColred(4, 8), false);

    EXPECT_EQ(board.isColred(5, 1), false);
    EXPECT_EQ(board.isColred(5, 2), false);
    EXPECT_EQ(board.isColred(5, 3), false);
    EXPECT_EQ(board.isColred(5, 6), false);
    EXPECT_EQ(board.isColred(5, 7), false);
    EXPECT_EQ(board.isColred(5, 8), false);

    EXPECT_EQ(board.isColred(6, 1), false);
    EXPECT_EQ(board.isColred(6, 2), false);
    EXPECT_EQ(board.isColred(6, 3), false);
    EXPECT_EQ(board.isColred(6, 4), false);
    EXPECT_EQ(board.isColred(6, 5), false);
    EXPECT_EQ(board.isColred(6, 6), false);
    EXPECT_EQ(board.isColred(6, 7), false);
    EXPECT_EQ(board.isColred(6, 8), false);
    EXPECT_EQ(board.isColred(7, 1), false);
    EXPECT_EQ(board.isColred(7, 2), false);
    EXPECT_EQ(board.isColred(7, 3), false);
    EXPECT_EQ(board.isColred(7, 4), false);
    EXPECT_EQ(board.isColred(7, 5), false);
    EXPECT_EQ(board.isColred(7, 6), false);
    EXPECT_EQ(board.isColred(7, 7), false);
    EXPECT_EQ(board.isColred(7, 8), false);
    EXPECT_EQ(board.isColred(8, 1), false);
    EXPECT_EQ(board.isColred(8, 2), false);
    EXPECT_EQ(board.isColred(8, 3), false);
    EXPECT_EQ(board.isColred(8, 4), false);
    EXPECT_EQ(board.isColred(8, 5), false);
    EXPECT_EQ(board.isColred(8, 6), false);
    EXPECT_EQ(board.isColred(8, 7), false);
    EXPECT_EQ(board.isColred(8, 8), false);


}


TEST(Board_funcs, check_score){

    Board board = Board();
    EXPECT_EQ(board.score(Board::BLACK), 2);
    EXPECT_EQ(board.score(Board::WHITE), 2);

    board.playColor(3, 4, Board::BLACK);
    EXPECT_EQ(board.score(Board::BLACK), 4);
    EXPECT_EQ(board.score(Board::WHITE), 1);

    board.playColor(3, 3, Board::WHITE);
    EXPECT_EQ(board.score(Board::BLACK), 3);
    EXPECT_EQ(board.score(Board::WHITE), 3);

    board.playColor(6, 5, Board::BLACK);
    EXPECT_EQ(board.score(Board::BLACK), 5);
    EXPECT_EQ(board.score(Board::WHITE), 2);

    board.playColor(3, 5, Board::WHITE);
    EXPECT_EQ(board.score(Board::BLACK), 4);
    EXPECT_EQ(board.score(Board::WHITE), 4);

    board.playColor(2, 3, Board::BLACK);
    EXPECT_EQ(board.score(Board::BLACK), 6);
    EXPECT_EQ(board.score(Board::WHITE), 3);

    board.playColor(2, 4, Board::WHITE);
    EXPECT_EQ(board.score(Board::BLACK), 5);
    EXPECT_EQ(board.score(Board::WHITE), 5);

    board.playColor(4, 3, Board::BLACK);
    EXPECT_EQ(board.score(Board::BLACK), 8);
    EXPECT_EQ(board.score(Board::WHITE), 3);
}

TEST(Board_funcs, posiible_moves){

    Board board = Board();
    EXPECT_EQ(board.possibleMoves(Board::BLACK), "(3,4),(4,3),(5,6),(6,5)");
    EXPECT_EQ(board.possibleMoves(Board::WHITE), "(3,5),(4,6),(5,3),(6,4)");

    board.playColor(3, 4, Board::BLACK);
    EXPECT_EQ(board.possibleMoves(Board::BLACK), "(5,6),(6,5),(6,6)");
    EXPECT_EQ(board.possibleMoves(Board::WHITE), "(3,3),(3,5),(5,3)");

    board.playColor(3, 3, Board::WHITE);
    EXPECT_EQ(board.possibleMoves(Board::BLACK), "(3,2),(4,3),(5,6),(6,5)");
    EXPECT_EQ(board.possibleMoves(Board::WHITE), "(2,4),(3,5),(4,6),(5,3),(6,4)");

    board.playColor(6, 5, Board::BLACK);
    EXPECT_EQ(board.possibleMoves(Board::BLACK), "(2,2),(3,2),(4,3)");
    EXPECT_EQ(board.possibleMoves(Board::WHITE), "(2,4),(3,5),(4,6),(6,4),(6,6)");

    board.playColor(3, 5, Board::WHITE);
    EXPECT_EQ(board.possibleMoves(Board::BLACK), "(2,2),(2,3),(2,4),(2,5),(4,3)");
    EXPECT_EQ(board.possibleMoves(Board::WHITE), "(4,6),(5,6),(6,4),(6,6),(7,5)");

    board.playColor(2, 3, Board::BLACK);
    EXPECT_EQ(board.possibleMoves(Board::BLACK), "(2,2),(2,5),(3,2),(3,6),(4,3)");
    EXPECT_EQ(board.possibleMoves(Board::WHITE), "(1,3),(2,4),(4,6),(6,4),(6,6),(7,5)");

}

TEST(Boad_funcs, opponent_score_for_move) {
    Board board = Board();
    EXPECT_EQ(board.OpponentScoreForMove(3, 4, Board::BLACK), 1);
    EXPECT_EQ(board.OpponentScoreForMove(4, 3, Board::BLACK), 1);
    EXPECT_EQ(board.OpponentScoreForMove(5, 6, Board::BLACK), 1);
    EXPECT_EQ(board.OpponentScoreForMove(6, 5, Board::BLACK), 1);
    EXPECT_EQ(board.OpponentScoreForMove(3, 5, Board::WHITE), 1);
    EXPECT_EQ(board.OpponentScoreForMove(4, 6, Board::WHITE), 1);
    EXPECT_EQ(board.OpponentScoreForMove(5, 3, Board::WHITE), 1);
    EXPECT_EQ(board.OpponentScoreForMove(6, 4, Board::WHITE), 1);

    board.playColor(3, 4, Board::BLACK);
    EXPECT_EQ(board.OpponentScoreForMove(5, 6, Board::BLACK), 0);
    EXPECT_EQ(board.OpponentScoreForMove(6, 6, Board::BLACK), 0);
    EXPECT_EQ(board.OpponentScoreForMove(6, 5, Board::BLACK), 0);
    EXPECT_EQ(board.OpponentScoreForMove(3, 3, Board::WHITE), 3);
    EXPECT_EQ(board.OpponentScoreForMove(3, 5, Board::WHITE), 3);
    EXPECT_EQ(board.OpponentScoreForMove(5, 3, Board::WHITE), 3);

    board.playColor(3, 3, Board::WHITE);
    EXPECT_EQ(board.OpponentScoreForMove(3, 2, Board::BLACK), 2);
    EXPECT_EQ(board.OpponentScoreForMove(4, 3, Board::BLACK), 2);
    EXPECT_EQ(board.OpponentScoreForMove(6, 5, Board::BLACK), 2);
    EXPECT_EQ(board.OpponentScoreForMove(5, 6, Board::BLACK), 2);
    EXPECT_EQ(board.OpponentScoreForMove(3, 5, Board::WHITE), 1);
    EXPECT_EQ(board.OpponentScoreForMove(4, 6, Board::WHITE), 2);
    EXPECT_EQ(board.OpponentScoreForMove(6, 4, Board::WHITE), 2);


    // check for illegal moves
    EXPECT_EQ(board.OpponentScoreForMove(3, 8, Board::BLACK), 3);
    EXPECT_EQ(board.OpponentScoreForMove(1, 1, Board::WHITE), 3);
    EXPECT_EQ(board.OpponentScoreForMove(6, 8, Board::BLACK), 3);
    EXPECT_EQ(board.OpponentScoreForMove(4, 1, Board::WHITE), 3);
    EXPECT_EQ(board.OpponentScoreForMove(-1, 8, Board::BLACK), 3);
    EXPECT_EQ(board.OpponentScoreForMove(-1, -1, Board::WHITE), 3);

}


