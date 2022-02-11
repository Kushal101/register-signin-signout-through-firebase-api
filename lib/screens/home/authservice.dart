import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_app_firebase_lec3/screens/home/user.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create user obj based on FirebaseUser
  MyUser? _userFromFirebase(User user) {
    return user != null ? MyUser(uid: user.uid) : null;
  }


//auth change user Stream

  Stream<MyUser?> get myuser {
    return _auth.authStateChanges().map((User? user) =>
        _userFromFirebase(user!));
  }

  // sign in anonymously
  Future signInAnon() async {
    try {
      UserCredential _result = await _auth.signInAnonymously();
      User? user = _result.user;
      return _userFromFirebase(user!);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

}


