import 'package:flutter/material.dart';

class GameButton extends StatefulWidget {
  final int row;
  final int column;
  final Function matrixComputation;

  const GameButton(this.row,this.column,this.matrixComputation);

  @override
  _GameButtonState createState() => _GameButtonState();
}

class _GameButtonState extends State<GameButton> {
  final ButtonStyle startButton =
      ElevatedButton.styleFrom(primary: Colors.brown[400], elevation: 25);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      width: 100,
      height: 100,
      child:  ElevatedButton(
    style: startButton,
    child: Text("",
    style: TextStyle(fontSize: 50, color: Colors.black)),
    onPressed: () {widget.matrixComputation(widget.row,widget.column);}
    )
    );
  }
  }
