import 'package:flutter/material.dart';

void main() {
  runApp(new Application());
}

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {

  String ptext = '';

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Dummy Application',
      home: new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.green,
          title: new Text('Dummy Application'),
        ),
        body: new Column(
          children: [
            new TextField(
                //onChanged: (String txt){
              onSubmitted: (String txt){
                setState(() {
                  ptext = txt;
                });
              },
              decoration: new InputDecoration(hintText: 'Type Something',labelText: 'Full Name'),
              
            ),
            new Text(ptext),
          ],
        ),
      ),
    );
  }
}

