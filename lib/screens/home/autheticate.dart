import 'package:firebase_core/firebase_core.dart';
import'package:flutter/material.dart';
import 'package:flutter_app_firebase_lec3/screens/home/sign_in.dart';

class Authenticate extends StatefulWidget{
  @override
  _AuthenticateState createState() =>_AuthenticateState();
}

class _AuthenticateState extends State<Authenticate>
{
  @override

  Widget build(BuildContext context) {
    return Container(
      child:SignIn(),
    );
  }
}
