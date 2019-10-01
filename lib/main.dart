import 'package:flutter/material.dart';

void main()
{
  runApp(new application());
}

class application extends StatefulWidget {
  @override
  _applicationState createState() => _applicationState();
}

class _applicationState extends State<application> {

  String statetext = "";

  @override
  void initState() {
    // TODO: implement initState

    statetext = 'Click on this button';
    super.initState();
  }

  void method1()
  {
    setState(() {
      statetext = 'This message has been changed';
    });
  }


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Stateful Widget',
      home: new Scaffold(
        body: new Center(
          child: new RaisedButton(onPressed:() {method1();},child: new Text(statetext),),
        ),
      ),
    );
  }
}

