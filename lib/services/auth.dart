import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:project_test/main.dart';
import 'package:project_test/models/user.dart';


class AuthService{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  //create user obj based on firebaseuser

  Myuser ?_userFromFirebaseUser(User ?user){
    return user!=null?Myuser(uid: user.uid):null;
  }
  //AUTh CHANGE USER STREAM
  Stream<Myuser?>get user{
    return _auth.authStateChanges()
    //.map((User? user)=>_userFromFirebaseUser(user));
    .map(_userFromFirebaseUser);
  }
  //sign in anon
  Future signInAnon() async{    
    try{
      //AuthResult
      UserCredential result =  await _auth.signInAnonymously();
      //FirebaseUser
      User ?user= result.user;
      return _userFromFirebaseUser( user!);
    }catch(e){
      print(e.toString());
      return null;
    }
  } 
  //sign in with email & password
  Future signInWithEmailAndPassword(String email, String password)async{
    try{
      UserCredential result= await _auth.signInWithEmailAndPassword(email: email, password: password);
      User ?user= result.user;
      return _userFromFirebaseUser(user);
    }catch(e){
      print(e.toString());
      return null;
  }
  }
  //register with email & password
  Future registerWithEmailAndPassword(String email, String password)async{
    try{
      UserCredential result= await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User ?user= result.user;

      // create a new document for the user with uid
      //await DatabaseService(uid: user!.uid).updateUserData("0", "nuevo usuario", 100);
      return _userFromFirebaseUser(user);
    }catch(e)
    {
      print(e.toString());
      return null;
  }
  }
  //sign out
  Future signOut() async{
    try{
      return await _auth.signOut();
    }catch(e){
      print(e.toString());
      return null;
    }
  }

}