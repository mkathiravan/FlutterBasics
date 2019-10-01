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

  SimpleDialog _sb;

  void Dialog()
  {
    _sb = new SimpleDialog(title: new Text('Choose from one'),children: <Widget>[
      new SimpleDialogOption(child: new Text("yes"), onPressed: (){print('yes');},),
      new SimpleDialogOption(child: new Text("no"), onPressed: (){print('no');},),
      new SimpleDialogOption(child: new Text("close"), onPressed: (){Navigator.pop(context);},)
    ],);

    showDialog(context: context,child: _sb);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(body: new Center(
      child: new RaisedButton(onPressed: (){Dialog();},child: new Text("Show Simple Dialog"),),
    ),);
  }

}