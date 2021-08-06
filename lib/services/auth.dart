

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_school_app_july_1/models/user.dart'
    ''
    ''
    '';

class AuthenticationService {

  final _firebaseAuth = FirebaseAuth.instance;
  PersonModel personModel = PersonModel();
  final userRef = FirebaseFirestore.instance.collection('users');


// managing the user state via stream.
// stream provides an immediate event of
// the user's current authentication state,
// and then provides subsequent events whenever
// the authentication state changes.
  Stream<User>  authStateChanges() => _firebaseAuth.authStateChanges();

//1
  Future<String> signIn({String username, String password}) async {


    String email = "";
    try {
      var person = await getUserFromDB(username:username);
      print(person);
      await _firebaseAuth.signInWithEmailAndPassword(
          email: person.email, password: password);
      print("signed in");
      return "Signed In";
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return "No user found for that email.";
      } else if (e.code == 'wrong-password') {
        return "Wrong password provided for that user.";
      } else {
        return "Something Went Wrong.";
      }
    }
  }

//2
// ignore: missing_return
  Future<String> _signUp({String email, String password}) async {
    try {
      var credential = await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      return credential.user.uid;
    } on FirebaseAuthException catch (e) {
      return "error" + e.code;
    }
  }

//3
  signupUser({String username, String email, String password, DateTime timestamp}) async {
    String uid = "";
    FirebaseFirestore.instance.collection('users').doc(username).get().then((value) async {
      if(value.exists)
      {
        return "Username already exists";
      }
      else{
        uid = _signUp(email: email, password: password) as String;
        if(uid.startsWith("error"))
        {
          return uid.replaceRange(0, 4, '');
        }
        else {
          personModel = PersonModel( uid: uid, username: username, email: email, timestamp: timestamp);
          await userRef.doc(username).set(personModel.toMap(personModel));
          return "User registration completed";
        }
      }
    });
  }

//4
  Future<PersonModel> getUserFromDB({String username}) async {
    try{
      final  doc = await userRef.doc(username).get();
      print(doc.data());
      return PersonModel.fromMap(doc.data());
    }
    catch (e)
    {
      print(e.message);
      return PersonModel();
    }

  }

//5
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}