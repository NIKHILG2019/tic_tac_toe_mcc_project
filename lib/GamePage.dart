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
  final ButtonStyle startButton =
      ElevatedButton.styleFrom(elevation: 5, minimumSize: Size(100, 50));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
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
                    color: Colors.brown[200],
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
                            GameButton(""),
                            Container(
                              width: 5,
                              height: 110,
                              color: Colors.white,
                              margin: EdgeInsets.all(2),
                              padding: EdgeInsets.all(0),
                            ),
                            GameButton(""),
                            Container(
                              width: 5,
                              height: 110,
                              color: Colors.white,
                              margin: EdgeInsets.all(2),
                              padding: EdgeInsets.all(0),
                            ),
                            GameButton("")
                          ],
                        ),
                        Container(
                            padding: EdgeInsets.only(left: 30, right: 30),
                            child: Divider(thickness: 5, color: Colors.white)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GameButton(""),
                            Container(
                              width: 5,
                              height: 110,
                              color: Colors.white,
                              margin: EdgeInsets.all(2),
                              padding: EdgeInsets.all(0),
                            ),
                            GameButton(""),
                            Container(
                              width: 5,
                              height: 110,
                              color: Colors.white,
                              margin: EdgeInsets.all(2),
                              padding: EdgeInsets.all(0),
                            ),
                            GameButton("")
                          ],
                        ),
                        Container(
                            padding: EdgeInsets.only(left: 30, right: 30),
                            child: Divider(thickness: 5, color: Colors.white)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GameButton(""),
                            Container(
                              width: 5,
                              height: 110,
                              color: Colors.white,
                              margin: EdgeInsets.all(2),
                              padding: EdgeInsets.all(0),
                            ),
                            GameButton(""),
                            Container(
                              width: 5,
                              height: 110,
                              color: Colors.white,
                              margin: EdgeInsets.all(2),
                              padding: EdgeInsets.all(0),
                            ),
                            GameButton("")
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
                              color: Colors.brown[200],
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

// Container(
// child: Center(
// child: Text(widget.playerTwoName),
// ))
