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

  void method1(value)
  {
    setState((){

      pText = value;
    });
  }


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
            new RaisedButton(onPressed: () {
              method1('You Pressed Raised Button');
            },child: new Text('Raised Button'),),
            new FlatButton(onPressed: null, child: new Text("Flat Button")),
            new Text(pText)
            
          ],
        ),
      ),
    );
  }

}