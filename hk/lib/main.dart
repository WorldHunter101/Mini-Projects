import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hk/eye.dart';


void main() async {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<MyApp> {


  Color pc = Colors.black38;
  Color sc = Colors.white70;
  Color lc = Colors.cyan;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pc,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 40.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[


              new Padding(padding: const EdgeInsets.all(30.0)),

              Text(
                'Welcome to our Home Eye test!',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 28),
              ),

              new Padding(padding: const EdgeInsets.all(10.0)),

              Text(
                'Fastest Way To know the condition of your eyes',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),

              new Padding(padding: const EdgeInsets.all(20.0)),

              RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                   MaterialPageRoute(builder: (_) =>Eye()));
                },
                color: lc,
                child: Padding(
                  padding: EdgeInsets.all(10.0),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Let's Start  ",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,

                        ),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),

            ],
          ),

        ),
      ),

    );
  }


}