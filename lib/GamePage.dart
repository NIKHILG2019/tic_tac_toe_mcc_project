import 'package:flutter/material.dart';
import 'package:tic_tac_toe_mcc_project/GameButton.dart';

class GamePage extends StatefulWidget {
  final String playerOneName;
  final String playerTwoName;
  final Function togglePage;

  const GamePage(this.togglePage, this.playerOneName, this.playerTwoName);

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  int homePageNumber = 0;
  int prevPageNumber = 1;
  int winner = -1;
  bool xAndOFlip = false;
  List<List<int>> matrix =
      List.generate(3, (index) => List<int>.filled(3, -1), growable: false);
  List<List<int>> colorMatrix =
      List.generate(3, (index) => List<int>.filled(3, -1), growable: false);
  final ButtonStyle startButton =
      ElevatedButton.styleFrom(elevation: 5, minimumSize: Size(100, 50));

  void matrixComputation(int row, int column) {
    if (xAndOFlip) {
      setState(() {
        matrix[row][column] = 0;
      });
      setState(() {
        xAndOFlip = !xAndOFlip;
      });
    } else {
      setState(() {
        matrix[row][column] = 1;
      });
      setState(() {
        xAndOFlip = !xAndOFlip;
      });
    }
    if (matrix[0][0] == 1 && matrix[0][1] == 1 && matrix[0][2] == 1) {
      setState(() {
        winner = 1;
      });
      setState(() {
        colorMatrix[0][0] = 2;
        colorMatrix[0][1] = 2;
        colorMatrix[0][2] = 2;
      });
    } else if (matrix[1][0] == 1 && matrix[1][1] == 1 && matrix[1][2] == 1) {
      setState(() {
        winner = 1;
      });
      setState(() {
        colorMatrix[1][0] = 2;
        colorMatrix[1][1] = 2;
        colorMatrix[1][2] = 2;
      });
    } else if (matrix[2][0] == 1 && matrix[2][1] == 1 && matrix[2][2] == 1) {
      setState(() {
        winner = 1;
      });
      setState(() {
        colorMatrix[2][0] = 2;
        colorMatrix[2][1] = 2;
        colorMatrix[2][2] = 2;
      });
    } else if (matrix[0][0] == 1 && matrix[1][0] == 1 && matrix[2][0] == 1) {
      setState(() {
        winner = 1;
      });
      setState(() {
        colorMatrix[0][0] = 2;
        colorMatrix[1][0] = 2;
        colorMatrix[2][0] = 2;
      });
    } else if (matrix[0][1] == 1 && matrix[1][1] == 1 && matrix[2][1] == 1) {
      setState(() {
        winner = 1;
      });
      setState(() {
        colorMatrix[0][1] = 2;
        colorMatrix[1][1] = 2;
        colorMatrix[2][1] = 2;
      });
    } else if (matrix[0][2] == 1 && matrix[1][2] == 1 && matrix[2][2] == 1) {
      setState(() {
        winner = 1;
      });
      setState(() {
        colorMatrix[0][2] = 2;
        colorMatrix[1][2] = 2;
        colorMatrix[2][2] = 2;
      });
    } else if (matrix[0][0] == 1 && matrix[1][1] == 1 && matrix[2][2] == 1) {
      setState(() {
        winner = 1;
      });
      setState(() {
        colorMatrix[0][0] = 2;
        colorMatrix[1][1] = 2;
        colorMatrix[2][2] = 2;
      });
    } else if (matrix[0][2] == 1 && matrix[1][1] == 1 && matrix[2][0] == 1) {
      setState(() {
        winner = 1;
      });
      setState(() {
        colorMatrix[0][2] = 2;
        colorMatrix[1][1] = 2;
        colorMatrix[2][0] = 2;
      });
    } else if (matrix[0][0] == 0 && matrix[0][1] == 0 && matrix[0][2] == 0) {
      setState(() {
        winner = 0;
      });
      setState(() {
        colorMatrix[0][0] = 2;
        colorMatrix[0][1] = 2;
        colorMatrix[0][2] = 2;
      });
    } else if (matrix[1][0] == 0 && matrix[1][1] == 0 && matrix[1][2] == 0) {
      setState(() {
        winner = 0;
      });
      setState(() {
        colorMatrix[1][0] = 2;
        colorMatrix[1][1] = 2;
        colorMatrix[1][2] = 2;
      });
    } else if (matrix[2][0] == 0 && matrix[2][1] == 0 && matrix[2][2] == 0) {
      setState(() {
        winner = 0;
      });
      setState(() {
        colorMatrix[2][0] = 2;
        colorMatrix[2][1] = 2;
        colorMatrix[2][2] = 2;
      });
    } else if (matrix[0][0] == 0 && matrix[1][0] == 0 && matrix[2][0] == 0) {
      setState(() {
        winner = 0;
      });
      setState(() {
        colorMatrix[0][0] = 2;
        colorMatrix[1][0] = 2;
        colorMatrix[2][0] = 2;
      });
    } else if (matrix[0][1] == 0 && matrix[1][1] == 0 && matrix[2][1] == 0) {
      setState(() {
        winner = 0;
      });
      setState(() {
        colorMatrix[0][1] = 2;
        colorMatrix[1][1] = 2;
        colorMatrix[2][1] = 2;
      });
    } else if (matrix[0][2] == 0 && matrix[1][2] == 0 && matrix[2][2] == 0) {
      setState(() {
        winner = 0;
      });
      setState(() {
        colorMatrix[0][2] = 2;
        colorMatrix[1][2] = 2;
        colorMatrix[2][2] = 2;
      });
    } else if (matrix[0][0] == 0 && matrix[1][1] == 0 && matrix[2][2] == 0) {
      setState(() {
        winner = 0;
      });
      setState(() {
        colorMatrix[0][0] = 2;
        colorMatrix[1][1] = 2;
        colorMatrix[2][2] = 2;
      });
    } else if (matrix[0][2] == 0 && matrix[1][1] == 0 && matrix[2][0] == 0) {
      setState(() {
        winner = 0;
      });
      setState(() {
        colorMatrix[0][2] = 2;
        colorMatrix[1][1] = 2;
        colorMatrix[2][0] = 2;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            alignment: Alignment.center,
            height: double.infinity,
            width: double.infinity,
            color: Colors.brown[100],
            padding: EdgeInsets.all(10),
            child: SingleChildScrollView(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.all(30),
                    alignment: Alignment.center,
                    width: 100,
                    height: 50,
                    color: winner == 0
                        ? Colors.lightGreen
                        : xAndOFlip
                            ? Colors.yellow
                            : Colors.brown[200],
                    child: RotatedBox(
                        quarterTurns: 2,
                        child: Text(widget.playerTwoName,
                            style: TextStyle(fontSize: 15)))),
                Container(
                    alignment: Alignment.topLeft,
                    width: 400,
                    height: 400,
                    color: Colors.brown[200],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            matrix[0][0] == -1 && winner == -1
                                ? GameButton(0, 0, matrixComputation)
                                : Container(
                                    color: colorMatrix[0][0] == 2
                                        ? Colors.lightGreen
                                        : Colors.brown[200],
                                    alignment: Alignment.center,
                                    width: 100,
                                    height: 100,
                                    child: Text(
                                        matrix[0][0] == 0
                                            ? "O"
                                            : matrix[0][0] == 1
                                                ? "X"
                                                : "",
                                        style: TextStyle(
                                            fontSize: 50,
                                            color: Colors.black))),
                            Container(
                              width: 5,
                              height: 110,
                              color: Colors.white,
                              margin: EdgeInsets.all(2),
                              padding: EdgeInsets.all(0),
                            ),
                            matrix[0][1] == -1 && winner == -1
                                ? GameButton(0, 1, matrixComputation)
                                : Container(
                                    color: colorMatrix[0][1] == 2
                                        ? Colors.lightGreen
                                        : Colors.brown[200],
                                    alignment: Alignment.center,
                                    width: 100,
                                    height: 100,
                                    child: Text(
                                        matrix[0][1] == 0
                                            ? "O"
                                            : matrix[0][1] == 1
                                                ? "X"
                                                : "",
                                        style: TextStyle(
                                            fontSize: 50,
                                            color: Colors.black))),
                            Container(
                              width: 5,
                              height: 110,
                              color: Colors.white,
                              margin: EdgeInsets.all(2),
                              padding: EdgeInsets.all(0),
                            ),
                            matrix[0][2] == -1 && winner == -1
                                ? GameButton(0, 2, matrixComputation)
                                : Container(
                                    color: colorMatrix[0][2] == 2
                                        ? Colors.lightGreen
                                        : Colors.brown[200],
                                    alignment: Alignment.center,
                                    width: 100,
                                    height: 100,
                                    child: Text(
                                        matrix[0][2] == 0
                                            ? "O"
                                            : matrix[0][2] == 1
                                                ? "X"
                                                : "",
                                        style: TextStyle(
                                            fontSize: 50, color: Colors.black)))
                          ],
                        ),
                        Container(
                            padding: EdgeInsets.only(left: 30, right: 30),
                            child: Divider(thickness: 5, color: Colors.white)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            matrix[1][0] == -1 && winner == -1
                                ? GameButton(1, 0, matrixComputation)
                                : Container(
                                    color: colorMatrix[1][0] == 2
                                        ? Colors.lightGreen
                                        : Colors.brown[200],
                                    alignment: Alignment.center,
                                    width: 100,
                                    height: 100,
                                    child: Text(
                                        matrix[1][0] == 0
                                            ? "O"
                                            : matrix[1][0] == 1
                                                ? "X"
                                                : "",
                                        style: TextStyle(
                                            fontSize: 50,
                                            color: Colors.black))),
                            Container(
                              width: 5,
                              height: 110,
                              color: Colors.white,
                              margin: EdgeInsets.all(2),
                              padding: EdgeInsets.all(0),
                            ),
                            matrix[1][1] == -1 && winner == -1
                                ? GameButton(1, 1, matrixComputation)
                                : Container(
                                    color: colorMatrix[1][1] == 2
                                        ? Colors.lightGreen
                                        : Colors.brown[200],
                                    alignment: Alignment.center,
                                    width: 100,
                                    height: 100,
                                    child: Text(
                                        matrix[1][1] == 0
                                            ? "O"
                                            : matrix[1][1] == 1
                                                ? "X"
                                                : "",
                                        style: TextStyle(
                                            fontSize: 50,
                                            color: Colors.black))),
                            Container(
                              width: 5,
                              height: 110,
                              color: Colors.white,
                              margin: EdgeInsets.all(2),
                              padding: EdgeInsets.all(0),
                            ),
                            matrix[1][2] == -1 && winner == -1
                                ? GameButton(1, 2, matrixComputation)
                                : Container(
                                    color: colorMatrix[1][2] == 2
                                        ? Colors.lightGreen
                                        : Colors.brown[200],
                                    alignment: Alignment.center,
                                    width: 100,
                                    height: 100,
                                    child: Text(
                                        matrix[1][2] == 0
                                            ? "O"
                                            : matrix[1][2] == 1
                                                ? "X"
                                                : "",
                                        style: TextStyle(
                                            fontSize: 50, color: Colors.black)))
                          ],
                        ),
                        Container(
                            padding: EdgeInsets.only(left: 30, right: 30),
                            child: Divider(thickness: 5, color: Colors.white)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            matrix[2][0] == -1 && winner == -1
                                ? GameButton(2, 0, matrixComputation)
                                : Container(
                                    color: colorMatrix[2][0] == 2
                                        ? Colors.lightGreen
                                        : Colors.brown[200],
                                    alignment: Alignment.center,
                                    width: 100,
                                    height: 100,
                                    child: Text(
                                        matrix[2][0] == 0
                                            ? "O"
                                            : matrix[2][0] == 1
                                                ? "X"
                                                : "",
                                        style: TextStyle(
                                            fontSize: 50,
                                            color: Colors.black))),
                            Container(
                              width: 5,
                              height: 110,
                              color: Colors.white,
                              margin: EdgeInsets.all(2),
                              padding: EdgeInsets.all(0),
                            ),
                            matrix[2][1] == -1 && winner == -1
                                ? GameButton(2, 1, matrixComputation)
                                : Container(
                                    color: colorMatrix[2][1] == 2
                                        ? Colors.lightGreen
                                        : Colors.brown[200],
                                    alignment: Alignment.center,
                                    width: 100,
                                    height: 100,
                                    child: Text(
                                        matrix[2][1] == 0
                                            ? "O"
                                            : matrix[2][1] == 1
                                                ? "X"
                                                : "",
                                        style: TextStyle(
                                            fontSize: 50,
                                            color: Colors.black))),
                            Container(
                              width: 5,
                              height: 110,
                              color: Colors.white,
                              margin: EdgeInsets.all(2),
                              padding: EdgeInsets.all(0),
                            ),
                            matrix[2][2] == -1 && winner == -1
                                ? GameButton(2, 2, matrixComputation)
                                : Container(
                                    color: colorMatrix[2][2] == 2
                                        ? Colors.lightGreen
                                        : Colors.brown[200],
                                    alignment: Alignment.center,
                                    width: 100,
                                    height: 100,
                                    child: Text(
                                        matrix[2][2] == 0
                                            ? "O"
                                            : matrix[2][2] == 1
                                                ? "X"
                                                : "",
                                        style: TextStyle(
                                            fontSize: 50,
                                            color: Colors.black))),
                          ],
                        )
                      ],
                    )),
                Container(
                    padding: EdgeInsets.only(top: 30),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 50,
                            width: 100,
                            margin: EdgeInsets.all(10),
                            child: ElevatedButton(
                                style: startButton,
                                onPressed: () {
                                  widget.togglePage(prevPageNumber);
                                },
                                child: Container(
                                    margin: EdgeInsets.all(10),
                                    alignment: Alignment.center,
                                    height: 30,
                                    width: 40,
                                    child: Icon(Icons.arrow_left_outlined))),
                          ),
                          Container(
                              margin: EdgeInsets.all(10),
                              alignment: Alignment.center,
                              width: 100,
                              height: 50,
                              color: winner == 1
                                  ? Colors.lightGreen
                                  : !xAndOFlip
                                      ? Colors.yellow
                                      : Colors.brown[200],
                              child: Text(widget.playerOneName,
                                  style: TextStyle(fontSize: 15))),
                          Container(
                              height: 50,
                              width: 100,
                              margin: EdgeInsets.all(10),
                              child: ElevatedButton(
                                  style: startButton,
                                  onPressed: () {
                                    widget.togglePage(homePageNumber);
                                  },
                                  child: Container(
                                      height: 30,
                                      width: 40,
                                      child:
                                          Icon(Icons.exit_to_app, size: 20))))
                        ]))
              ],
            ))));
  }
}
