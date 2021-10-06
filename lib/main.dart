import 'package:flutter/material.dart';
import 'package:tic_tac_toe_mcc_project/GamePage.dart';
import 'package:tic_tac_toe_mcc_project/player_information.dart';
import './HomePage.dart';
import './player_information.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tic Tac toe Game',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: MyHomePage(title: 'Tic Tac Toe'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int pageNumber = 0;
  String playerOneName;
  String playerTwoName;


  void togglePage(number) {
    setState(() {
      pageNumber = number;
    });
  }

  void gamePage(number, playerOneName, playerTwoName){
    playerOneName = this.playerOneName;
    playerTwoName = this.playerTwoName;
    setState(() {
      pageNumber = number;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (pageNumber == 0) {
      return HomePage(togglePage);
    } else if (pageNumber == 1){
      return PlayerInformation(togglePage,gamePage);
    }
    else if(pageNumber == 2){
      return GamePage(togglePage,playerOneName,playerTwoName);
    }
  }
}
