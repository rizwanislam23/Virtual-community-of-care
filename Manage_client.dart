import 'package:first_app/Administration_home.dart';
import 'package:first_app/Client_add_new.dart';
import 'package:first_app/Client_update.dart';
import 'package:first_app/Client_remove.dart';
import 'package:first_app/Client_view_schedule.dart';
import 'package:first_app/Client_view_charting.dart';
import 'package:first_app/Client_manage_agreement.dart';
import 'package:flutter/material.dart';

class ManageClient extends StatefulWidget {
  const ManageClient({super.key});

  @override
  State<ManageClient> createState() => _ManageClientState();
}

class _ManageClientState extends State<ManageClient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(children: [
          SizedBox(height: 80),

//manage staff
//Button: Add new
          Center(
              child: ElevatedButton(
                  child: Text("Add new"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AddNewClient()),
                    );
                  })),
// Button: Edit Existing
          SizedBox(height: 40),
          Center(
              child: ElevatedButton(
                  child: Text("Update"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Update()),
                    );
                  })),
          // Button: Assign staff
          SizedBox(height: 40),
          Center(
              child: ElevatedButton(
                  child: Text("Remove/Delete"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Remove()),
                    );
                  })),
          // Button: View Schedule
          SizedBox(height: 40),
          Center(
              child: ElevatedButton(
                  child: Text("View Schedule"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ViewScheduleClient()),
                    );
                  })),

          // Button: View Charting
          SizedBox(height: 40),
          Center(
              child: ElevatedButton(
                  child: Text("View Charting"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ViewCharting()),
                    );
                  })),

          // Button: Manage Agreement
          SizedBox(height: 40),
          Center(
              child: ElevatedButton(
                  child: Text("Manage agreement"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ManageAgreement()),
                    );
                  })),

          // Button: back
          SizedBox(height: 40),
          Center(
              child: ElevatedButton(
                  child: Text("Back"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AdminHome()),
                    );
                  })),
        ]),
      )),
    );
  }
}
