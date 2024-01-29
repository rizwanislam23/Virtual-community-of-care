// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:first_app/login_page.dart';
import 'package:flutter/material.dart';
import 'package:first_app/Employee_add_charting.dart';
import 'package:first_app/Employee_view_charting.dart';
import 'package:first_app/Employee_view_agreement.dart';
import 'package:first_app/Employee_edit_charting.dart';

class EmployeeHome extends StatefulWidget {
  const EmployeeHome({super.key});

  @override
  State<EmployeeHome> createState() => _EmployeeHomeState();
}

class _EmployeeHomeState extends State<EmployeeHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(children: [
          SizedBox(height: 20),
          //Admin_home
          Text(
            'Employee Home',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          SizedBox(height: 40),
          // Text(
          //   'text',
          //   style: TextStyle(
          //     fontWeight: FontWeight.bold,
          //     fontSize: 24,
          //   ),
          // ),
          // SizedBox(height: 20),
          //email
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.10),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 40.0),
                      border: InputBorder.none,
                      hintText: 'today activity'),
                ),
              ),
            ),
          ),
          SizedBox(height: 40),
//Button : Add charting
          Center(
              child: ElevatedButton(
                  child: Text("Add Charting"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EmployeeAddCharting()),
                    );
                  })),
// Button: View charting
          SizedBox(height: 40),
          Center(
              child: ElevatedButton(
                  child: Text("View Charting"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EmployeeViewCharting()),
                    );
                  })),
//button: view agreement
          SizedBox(height: 40),
          Center(
              child: ElevatedButton(
                  child: Text("View Agreement"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EmployeeViewAgreement()),
                    );
                  })),
          //button: Edit charting
          SizedBox(height: 40),
          Center(
              child: ElevatedButton(
                  child: Text("Edit Charting"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EmployeeEditCharting()),
                    );
                  })),

          //button: temporary back
          //button: Edit charting
          SizedBox(height: 40),
          Center(
              child: ElevatedButton(
                  child: Text("Back"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  })),
        ]),
      )),
    );
  }
}
