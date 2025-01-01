import 'package:flutter/material.dart';
import 'package:flutter_application_1/notescreen.dart';
import 'package:flutter_application_1/profilepage.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  List Pages=[NoteScreen(),ProfileScreen()];
  int SelectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Pages[SelectedIndex],
      bottomNavigationBar: BottomNavigationBar(onTap: 
      (value) {
        setState(() {
          SelectedIndex=value;
        });
      },items: [
        BottomNavigationBarItem(icon: Icon(Icons.note), label: "profile"),
        BottomNavigationBarItem(icon: Icon(Icons.phone), label: "phone")
      ]),
    );
  }
}
