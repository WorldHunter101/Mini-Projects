import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hk/eye.dart';
import 'main.dart';

Color pc = Colors.black38;
Color sc = Colors.white70;
Color lc = Colors.cyan;

final TextEditingController nameController = TextEditingController();
final TextEditingController ageController = TextEditingController();
final TextEditingController genderController = TextEditingController();


class SellerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Seller Page';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: MyCustomForm(),

      ),
    );
  }
}

// Create a Form widget.

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class. This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    EdgeInsets.symmetric(horizontal: 40);
    // Build a Form widget using the _formKey created above.
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Text(
              'Enter Details',
              style: TextStyle(

              ),
              textAlign: TextAlign.center,

            ),

            new Padding(padding: const EdgeInsets.all(25.0)),

            _buildTextField(nameController, Icons.person, 'Full Name'),

            new Padding(padding: const EdgeInsets.all(7.0)),

            _buildTextField(ageController, Icons.calendar_today, 'Age (Years)'),

            new Padding(padding: const EdgeInsets.all(7.0)),

            _buildTextField(ageController, Icons.wc, 'Gender (M/F)'),

            new Padding(padding: const EdgeInsets.all(30.0)),

            new Container(
                alignment: Alignment.bottomCenter,
                //padding: const EdgeInsets.only(left: 150.0, top: 40.0),
                child: new RaisedButton(
                  color: Colors.black,
                  child: const Text(
                    'Submit',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Eye()),
                      );
                    }
                  },
                )),
          ],
        ),
      ),
    );
  }

  _buildTextField(TextEditingController controller, IconData icon,
      String labelText) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      decoration: BoxDecoration(
          color: lc, border: Border.all(color: Colors.white)),
      child: TextFormField(
        controller: controller,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 5),
            labelText: labelText,
            labelStyle: TextStyle(color: Colors.white),
            icon: Icon(
              icon,
              color: Colors.white,
            ),
            border: InputBorder.none),

        validator: (String userInput) {
          if (userInput.isEmpty) {
            return "This Can't be empty";
          }
          return null;
        },

      ),
    );
  }




}