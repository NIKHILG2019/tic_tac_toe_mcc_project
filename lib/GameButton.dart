import 'package:flutter/material.dart';

class GameButton extends StatefulWidget {
  final String data;

  const GameButton(this.data);

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
      child: ElevatedButton(
          style: startButton,
          child: Text(widget.data,
              style: TextStyle(fontSize: 50, color: Colors.black)),
          onPressed: () {}),
    );
  }
}
