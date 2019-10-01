import 'package:flutter/material.dart';
void main()
{
  runApp(new MaterialApp(home: new Application()));
}

class Application extends StatefulWidget
{
  @override
  _ApplicationState createState() => new _ApplicationState();

}

class _ApplicationState extends State
{
  String pText = "";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Dummy Application",
      home: new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.green,
          title: new Text("Dummy Application"),
        ),
        body: new Column(
          children: <Widget>[
            new TextField(
              onSubmitted: (String txt){

                setState((){

                  pText = txt;
                });

              },
              decoration: new InputDecoration(hintText: "Type Something" , labelText: "Fullname"),
            ),
            new Text(pText)
          ],
        ),
      ),
    );
  }

}