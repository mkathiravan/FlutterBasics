
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
  Widget build(BuildContext context)
  {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.green,
        title: new Text("AppBar Widget"),
        titleSpacing: 80.0,
        elevation: 30.0,
        toolbarOpacity: 0.5,
      ),
    );
  }
}