import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/firebase_options.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/notescreen.dart';
import 'package:flutter_application_1/registration.dart';
// import 'package:flutter_application_1/registration.dart';

Future<void> main() async {
// ...

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: LoginPage()));
}
