 import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter_app_firebase_lec3/screens/home/wrapper.dart';

void main()
   async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Wrapper(),

    );
  }


}

