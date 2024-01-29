import 'package:first_app/Administration_home.dart';
import 'package:first_app/Staff_add_new.dart';
import 'package:first_app/Staff_edit_existing.dart';
import 'package:first_app/Staff_assign_staff.dart';
import 'package:first_app/Staff_view_schedule.dart';
import 'package:flutter/material.dart';

class ManageStaff extends StatefulWidget {
  const ManageStaff({super.key});

  @override
  State<ManageStaff> createState() => _ManageStaffState();
}

class _ManageStaffState extends State<ManageStaff> {
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
                      MaterialPageRoute(builder: (context) => AddNew()),
                    );
                  })),
// Button: Edit Existing
          SizedBox(height: 40),
          Center(
              child: ElevatedButton(
                  child: Text("Edit existing"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EditExisting()),
                    );
                  })),
          // Button: Assign staff
          SizedBox(height: 40),
          Center(
              child: ElevatedButton(
                  child: Text("Assign staff"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AssignStaff()),
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
                      MaterialPageRoute(builder: (context) => ViewSchedule()),
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
