import 'package:flutter/material.dart';

class PlayerInformation extends StatefulWidget {
  final Function togglePage;
  final Function gamePage;

  PlayerInformation(this.togglePage, this.gamePage);

  @override
  _PlayerInformationState createState() => _PlayerInformationState();
}

class _PlayerInformationState extends State<PlayerInformation> {
  String playerOne;
  String playerTwo;
  int prevPageNumber = 0;
  int pageNumber = 2;
  final ButtonStyle startButton =
      ElevatedButton.styleFrom(elevation: 5, minimumSize: Size(100, 50));
  final playerOneController = TextEditingController();
  final playerTwoController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    playerOneController.dispose();
    playerTwoController.dispose();
    super.dispose();
  }

  void validation(){
    if(playerOneController.text.isNotEmpty && playerTwoController.text.isNotEmpty){
      playerOne = playerOneController.text;
      playerTwo = playerTwoController.text;
      print(playerOne);
      print(playerTwo);
      widget.gamePage(pageNumber,playerOne,playerTwo);
    }
    else{
      if(playerOneController.text.isEmpty){
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Text("Player 1 Name is Empty"),
              );});
      }
      if(playerTwoController.text.isEmpty){
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Text("Player 2 Name is Empty"),
              );});
      }
    }
  }

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
                        controller: playerOneController,
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
                        controller: playerTwoController,
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
                                  ])),
                        ),
                        ElevatedButton(
                          style: startButton,
                          onPressed: () {
                            validation();
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
