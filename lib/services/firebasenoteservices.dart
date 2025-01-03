import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

Future<void> Addnote(
    {required String title,
    required String decription,
    required BuildContext context}) async {
  try {
    await FirebaseFirestore.instance.collection('Notes').add({
      'title': title,
      'description': decription,
      'userId': FirebaseAuth.instance.currentUser?.uid
    });
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('Note added successfully')));
  } catch (e) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(e.toString())));
  }
}
