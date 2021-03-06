
import 'package:flutter/material.dart';
import 'package:flutter_app_firebase_lec3/screens/home/authservice.dart';

class SignIn extends StatefulWidget {

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth =AuthService();
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.brown[100],
      appBar:AppBar (
        backgroundColor: Colors.orangeAccent,
        elevation: 0.0,
        title: Text ("Sign in to Kratik cafe"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical:20.0,horizontal:50.0),
        // ignore: deprecated_member_use
        child: RaisedButton(
          child:Text('Sign in anon'),
          onPressed: () async {
            dynamic result = await _auth.signInAnon();
            if (result == null){
              print('error signing in');
            }else{
              print('signed in');
              print (result.uid);
            }
            },


        ),
      ),
    );
  }
}
