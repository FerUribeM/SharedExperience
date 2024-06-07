import 'dart:developer';

import 'package:injectable/injectable.dart';

@LazySingleton()
class FirebaseRepository {

  //FirebaseAuth? _firebaseAuth;

  FirebaseRepository() {
    //_firebaseAuth = FirebaseAuth.instance;
  }

  // SignInWithCredentials
  Future<void>? signInWithCredentials(String email, String password) {
    //return _firebaseAuth?.signInWithEmailAndPassword(email: email, password: password);
    log("Execute signInWithCredentials");
  }

}