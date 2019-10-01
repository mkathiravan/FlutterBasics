import 'package:flutter/material.dart';
import 'customwidget.dart';
void main()
{
  runApp(new Application());
}

class Application extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Custom Widgets",
      home: new Scaffold(
        body: new customwidgets(),
      ),
    );
  }

}
