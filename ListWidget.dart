
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

  List<int> items = new List();

  @override
  void initState() {
    // TODO: implement initState
    for(int i = 0; i < 50; i++)
      {
         items.add(i);
      }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Sample List Application',
      home: new Scaffold(

        appBar: new AppBar(title: new Text('List Widget'),),
        body: ListView.builder(

          itemCount: items.length,
            itemBuilder: (BuildContext context,int index)
        {
          return new ListTile(
            title: new Text('item No : $index'),
            trailing: new Icon(Icons.arrow_forward),
          );
        }),

      ),
    );
  }
}
