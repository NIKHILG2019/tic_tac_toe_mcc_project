import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final Function togglePage;
  HomePage(this.togglePage);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageNumber =1 ;
  @override
  Widget build(BuildContext context) {
    final ButtonStyle startButton = ElevatedButton.styleFrom(elevation: 5,minimumSize: Size(100, 50));
    return Scaffold(
        appBar: AppBar(
          title: Text("Tic Tac Toe"),
          centerTitle: true,
        ),
        body: Container(
        color: Colors.brown[100],
        child:Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Image.asset('assets/tic_tac_toe.gif'),
                  Container(
                      padding: EdgeInsets.only(top:40),
                      child:Text("Instructions",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold ))),
                  Container(
                      padding: EdgeInsets.only(bottom: 50,top: 20),
                      child:Center(child:Column(
                        children: [
                          Text("1. This game is a two player game",style: TextStyle(fontSize: 16),),
                          Text("2. Press the Next button to continue",style: TextStyle(fontSize: 16)),
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                      ))
                  ),
                  ElevatedButton(
                    style: startButton,
                    onPressed: (){widget.togglePage(pageNumber);},
                    child: Container(
                        height: 50,
                        width: 100,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[Text("Next",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),Icon(Icons.arrow_right_outlined)])),
                  ),
                ]))
    ));
  }
}


