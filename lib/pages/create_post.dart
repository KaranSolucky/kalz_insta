
import 'package:flutter/material.dart';



class CreatePostPage extends StatefulWidget {
  @override
  _CreatePostPageState createState() => _CreatePostPageState();
}

class _CreatePostPageState extends State<CreatePostPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:  Text("HEYYY")
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){},
        backgroundColor: Colors.amber,
        child: Icon(Icons.camera_alt),
      ),
    );
  }
}