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

class _ApplicationState extends State<Application> with SingleTickerProviderStateMixin
{

  TabController _tabController;

  void initState()
  {
    _tabController = new TabController(length: 3, vsync: this);
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("tabbar"),
        bottom: new TabBar( controller: _tabController,
            tabs: <Widget>[new Tab(icon: new Icon(Icons.home),),
                                        new Tab(icon: new Icon(Icons.supervisor_account),),
                                         new Tab(icon: new Icon(Icons.close),)]),
      ),
    body: new TabBarView(controller: _tabController,children: <Widget>[new Center(child: new Text('Welcome to home'),),
          new Center(child: new Text("Welcome to user account"),),
          new Center(child: new Text("Welcome to close"),)]),

      bottomNavigationBar: new Material(
        color: Colors.blue,
        child: new TabBar(controller: _tabController,tabs: <Widget>[new Tab(icon: new Icon(Icons.home),),
          new Tab(icon: new Icon(Icons.supervisor_account),),
          new Tab(icon: new Icon(Icons.close),)] ),
      ),
    );
  }
}