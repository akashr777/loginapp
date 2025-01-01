import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/bottomnavigation.dart';
import 'package:flutter_application_1/profilepage.dart';

Future<void> signup(
    {required String username,
    required String email,
    required String password,
    required String confirmpass,
    required BuildContext context}) async {
  try {
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => BottomNavigationScreen(),
        ));
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('Registration Succesful')));

    print('user');
  } catch (e) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(e.toString())));

    print('error');
  }
}

Future<void> login({required String email, required String password,required BuildContext context}) async {
  try {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => BottomNavigationScreen(),
        ));
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('Login Succesful')));
  } catch (e) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(e.toString())));
  }
}
