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
  bool sbool = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Center(
        child: new Switch(value: sbool, onChanged: (bool sb)
        {
          setState(() {
            sbool = sb;
            print(sbool);
          });
        }),
      ),
    );
  }

}