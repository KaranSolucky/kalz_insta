import 'package:flutter/material.dart';

import '../authentication.dart';

class GoogleLogin extends StatelessWidget {
  Future<void> signInWithGoogle() async {
    await Authentification().signInWithGoogle();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GOOGLE LOGIN"),
      ),
      body: Center(
        child: MaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          onPressed: signInWithGoogle,
          color: Colors.amber,
          child: Text("Login With Google"),
        ),
      ),
    );
  }

}
