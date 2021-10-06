import 'package:flutter/material.dart';

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
            padding: EdgeInsets.all(100),
            child: Column(children: [
              Container(
                  child: Center(
                child: Text(widget.playerTwoName),
              )),
              Container(
                padding: EdgeInsets.all(50),
                child: ElevatedButton(
                    style: startButton,
                    onPressed: () {
                      widget.togglePage(prevPageNumber);
                    },
                    child: Container(
                        height: 50,
                        width: 100,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.arrow_left_outlined),
                              Text("Back",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16))
                            ]))),
              ),
              ElevatedButton(
                style: startButton,
                onPressed: () {
                  widget.togglePage(homePageNumber);
                },
                child: Container(
                    height: 50,
                    width: 100,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.exit_to_app,
                            size: 16,
                          ),
                          Text("Home Page",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16))
                        ])),
              )
            ])));
  }
}
