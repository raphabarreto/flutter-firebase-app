import 'package:brew_crew/services/auth.dart';
import 'package:flutter/material.dart';

class SigIn extends StatefulWidget {
  @override
  _SigInState createState() => _SigInState();
}

class _SigInState extends State<SigIn> {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        title: Text('Sign in to Brew Crew'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: RaisedButton(
          child: Text('Sign in anon'),
          onPressed: () async {
            dynamic result = await _auth.signInAnon();
            if (result == null) {
              print('error signing in');
            } else {
              print('signed in'); 
              print(result);
            }
          }
        ),
      ),
    );
  }
}