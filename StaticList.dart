import 'package:flutter/material.dart';

void main()
{
  runApp(new Application());
}

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Normal Application',
      home: new Scaffold(
        appBar: new AppBar(title: new Text('List Widget'),),
        body: new ListView(
          children: <Widget>[
            new ListTile(
              title: new Text('Item 1'),
              trailing: new Icon(Icons.arrow_forward),
            ),
            new ListTile(
              title: new Text('Item 2'),
              trailing: new Icon(Icons.arrow_forward),
            ),
            new ListTile(
              title: new Text('Item 3'),
              trailing: new Icon(Icons.arrow_forward),
            )
          ],
        ),
      ),
    );
  }
}
