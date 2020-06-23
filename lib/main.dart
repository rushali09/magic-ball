import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );
class BallPage extends StatefulWidget {
  BallPage({Key key}) : super(key: key);

  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
         backgroundColor: Colors.blue[600],
        centerTitle: true,
        title: Text('Ask Me Anything',
          style:TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Ball(),

    );
    
  }
}

class Ball extends StatefulWidget {
  Ball({Key key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {

  int ballNumber=1;

  @override
  Widget build(BuildContext context) {
    return Center(
          child: Container(
              child: FlatButton(
                child: Image.asset('images/ball$ballNumber.png'),
                onPressed: (){
                 
                 setState(() {
                  ballNumber=Random().nextInt(5)+1;
                  },
                ); 
            
                },
              ),
          ),
    );
  }
}