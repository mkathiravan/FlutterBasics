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

class _ApplicationState extends State<Application>
{
  String mText = "";
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("AppBar Widget"),
      leading: new Icon(Icons.menu),
      actions: <Widget>[
        new IconButton(icon: new Icon(Icons.arrow_forward),onPressed: (){setState((){mText = 'This is Arrow Icon Button';});}),
        new IconButton(icon: new Icon(Icons.close),onPressed: () {setState((){mText = 'This is close Button';});})
      ],),

      body: new Center(
        child: new Text(mText),
      ),

    );
  }

}
