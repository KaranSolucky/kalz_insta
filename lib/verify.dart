import 'package:flutter/material.dart';

class Verify extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Verify"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Text("Verification link Sent, Verifyand Login to Continue.."),
      ),
    );
  }
}
