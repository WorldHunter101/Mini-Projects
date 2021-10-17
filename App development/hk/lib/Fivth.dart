import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'Six.dart';
import 'main.dart';

Color lc = Colors.cyan;

final TextEditingController showController = TextEditingController();

class EyeCheck extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'EYE CHECK UP';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: Fivth(),

      ),
    );
  }
}

class Fivth extends StatefulWidget {
  @override
  _FivthState createState() => _FivthState();
}

class _FivthState extends State<Fivth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new Padding(padding: EdgeInsets.all(10.0),),
              Text(
                '5 of 10',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              new Padding(padding: EdgeInsets.all(45.0),),
              Text(
                'R D H G',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 65.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              new Padding(padding: EdgeInsets.all(15.0),),
              //_buildTextField(showController, Icons.short_text, 'Enter Text shown'),
              new Padding(padding: EdgeInsets.all(15.0),child: Text(
                "Are you able to see, what's written",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  // backgroundColor: lc,
                ),
                textAlign: TextAlign.center,
              ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    onPressed: (){
                      Alert(
                        context: context,
                        type: AlertType.error,
                        title: "Your result : 4/10",
                        desc: "You seem to have problem with see details at certain distances.Visit an eye doc for accurate test",
                        buttons: [
                          DialogButton(
                            child: Text(
                              "Try Again",
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            onPressed: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) =>MyApp()));
                            },
                            width: 120,
                          )
                        ],
                      ).show();
                    },
                    color: Colors.redAccent[200],
                    child: const Text(
                      " NO ",
                      style: TextStyle(color: Colors.yellow),
                    ),
                  ),
                  RaisedButton(
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) =>Sixth()));
                    },
                    color: Colors.greenAccent,
                    child: const Text(
                      '  YES  ',
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                ],
              ),
              //new Padding(padding: EdgeInsets.all(5.0),),
            ],
          ),
        ),
      ),
    );
  }
}
