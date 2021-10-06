import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    final ButtonStyle startButton = ElevatedButton.styleFrom(elevation: 5,minimumSize: Size(100, 50));
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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
                  Text("2. Press the Start button to start the game",style: TextStyle(fontSize: 16)),
        ],
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
        ))
        ),
        ElevatedButton(
          style: startButton,
          onPressed: (){},
          child: Container(
            height: 50,
              width: 100,
              child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[Text("Start",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),Icon(Icons.arrow_right_outlined)])),
        ),
    ]))
    ));
  }
}
