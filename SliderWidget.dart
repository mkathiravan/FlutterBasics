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

  double dtext = 2.0;

  void method1(value)
  {
    setState(() {
      dtext = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'Dummy Application',
      home: new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.blueGrey,
          title: new Text('Slider Widget Application'),
        ),

        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
              new Slider(value: dtext, min: 1.0, max: 10.0, onChanged: (double dval)
              {
                method1(dval);
              }),
              new Text('value : $dtext'),
            ],
          ),
        ),
      ),
    );
  }

}

