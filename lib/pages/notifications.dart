import 'package:flutter/material.dart';
import 'package:kalz_studio/graph.dart';

class NotificationsPage extends StatefulWidget {
  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(

      child: MaterialButton(
        splashColor: Colors.black,

        child: Text("Graph"),
        textColor: Colors.black,
        color: Colors.amber,
        onPressed: (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => GraphViewPage()));
        }

        ,
      ),
      color: Colors.black,
    );
  }
}
