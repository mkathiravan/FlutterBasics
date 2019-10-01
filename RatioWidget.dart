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
  int rValue = 0;

  void method1(value)
  {
    setState(() {
      rValue = value;
      print(rValue);

    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Dummy Application",
      home: new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.orange,
          title: new Text("Radio Widget"),
        ),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Radio(value: 1, groupValue: 5, onChanged: (int rval){method1(rval);}),
              new Radio(value: 2, groupValue: 5, onChanged: (int rval){method1(rval);}),
              new Radio(value: 3, groupValue: 5, onChanged: (int rval){method1(rval);})
            ],
          ),
        ),
      ),
    );
  }

}