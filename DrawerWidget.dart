import 'package:flutter/material.dart';
import 'OtherPage.dart';
void main()
{

  runApp(new MaterialApp(home: new Application()));
}

class Application extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(title: new Text('Drawer'),),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[

            new UserAccountsDrawerHeader(

              accountName : new Text('Kathiravan'),
              accountEmail: new Text('mkathiravanmca@gmail.com'),
              currentAccountPicture: new CircleAvatar(backgroundColor: Colors.black26,child: new Text('M'),),
              decoration: new BoxDecoration(color: Colors.orange),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(backgroundColor: Colors.black26,child: new Text('D'),),
                new CircleAvatar(backgroundColor: Colors.black26,child: new Text('A'),)
              ],
        ),
            new ListTile(title: new Text('Page 1'),trailing: new Icon(Icons.arrow_forward),
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new op('Page 1'))),),
            new ListTile(title: new Text('Page 2'),trailing: new Icon(Icons.arrow_forward),
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new op('Page 2'))),),
            new ListTile(title: new Text('Close'),trailing: new Icon(Icons.close),onTap: (){Navigator.pop(context);},),

          ],
        ),
      ),
    );
  }

}