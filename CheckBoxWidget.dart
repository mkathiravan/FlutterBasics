import 'package:flutter/material.dart';
void main()
{
  runApp(new MaterialApp(home: new Application()));
}

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => new _ApplicationState();

}

class _ApplicationState extends State
{

  bool cbool = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Center(
        child: new Checkbox(value: true, onChanged: (bool cb){
          setState(() {
            
            cbool = cb;
            print(cbool);
          });

        }),
      ),

    );
  }

}