import 'package:flutter/material.dart';

class customwidgets extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      color: Colors.pink,
      child: new Container(
        color: Colors.orange,
        margin: const EdgeInsets.all(15.0),

          child: new Container(
            color: Colors.green,
            margin: const EdgeInsets.all(15.0),
              child: new Container(
                color: Colors.blue,
                margin: const EdgeInsets.all(15.0),
                  child: new Container(
                    color: Colors.yellow,
                    margin: const EdgeInsets.all(15.0),
                  ),
              ),
          ),
      ),
    );
  }

}
