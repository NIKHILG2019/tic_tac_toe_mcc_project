import 'package:flutter/material.dart';

class PlayerInformation extends StatefulWidget {
  final Function togglePage;

  PlayerInformation(this.togglePage);

  @override
  _PlayerInformationState createState() => _PlayerInformationState();
}

class _PlayerInformationState extends State<PlayerInformation> {
  int pageNumber = 0;
  final ButtonStyle startButton =
      ElevatedButton.styleFrom(elevation: 5, minimumSize: Size(100, 50));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tic Tac Toe"),
          centerTitle: true,
        ),
        body: Container(
            color: Colors.brown[100],
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Container(
                    child: Text(
                      "Player 1 Represents 'X'",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.all(20),
                      child: TextField(
                          autocorrect: false,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter Name of Player 1',
                          )),
                      height: 100,
                      width: 300),
                  Container(
                    child: Text(
                      "Player 2 Represents 'O'",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.all(20),
                      child: TextField(
                          decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter Name of Player 2',
                      )),
                      height: 100,
                      width: 300),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          style: startButton,
                          onPressed: () {
                            widget.togglePage(pageNumber);
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
                                  ])),
                        ),
                        ElevatedButton(
                          style: startButton,
                          onPressed: () {
                            widget.togglePage(pageNumber);
                          },
                          child: Container(
                              height: 50,
                              width: 100,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Start",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16)),
                                    Icon(Icons.arrow_right_outlined)
                                  ])),
                        ),
                      ]),
                ]))));
  }
}
