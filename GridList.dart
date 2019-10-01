
import 'package:flutter/material.dart';
void main()
{
  runApp(new MaterialApp(home: new Application(),));
}

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {

  List<int> items = new List();

  @override
  void initState() {
    // TODO: implement initState
    for(int i =0; i< 50; i++)
      {
        items.add(i);
      }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new GridView.builder(

        itemCount: items.length,
          gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          itemBuilder: (BuildContext context, int index)
      {
        return new Card(
          color: Colors.blue,
          child: new Padding(padding: const EdgeInsets.all(20.0)),

        );
      }),

    );
  }
}
