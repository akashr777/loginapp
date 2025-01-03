import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/firebasenoteservices.dart';

class Addnotes extends StatefulWidget {
  @override
  State<Addnotes> createState() => _AddnotesState();
}

class _AddnotesState extends State<Addnotes> {
  TextEditingController titlecontroller = TextEditingController();
  TextEditingController decriptioncontroller = TextEditingController();

  bool isloading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: titlecontroller,
              decoration: InputDecoration(
                labelText: 'Title',
              ),
            ),
            TextField(
              controller: decriptioncontroller,
              decoration: InputDecoration(
                labelText: 'Decription',
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  setState(() {
                    isloading = true;
                  });

                  await Addnote(
                      title: titlecontroller.text,
                      decription: decriptioncontroller.text,
                      context: context);
                  setState(() {
                    isloading = false;
                  });
                },
                child:
                    isloading ? CircularProgressIndicator() : Text("Add Note"))
          ],
        ),
      ),
    );
  }
}
