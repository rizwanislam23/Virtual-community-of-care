// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:first_app/login_page.dart';
import 'package:flutter/material.dart';
import 'package:first_app/Manage_staff.dart';
import 'package:first_app/Manage_client.dart';

class AdminHome extends StatefulWidget {
  const AdminHome({super.key});

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(children: [
          SizedBox(height: 20),
          //Admin_home
          Text(
            'Admin Home',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          SizedBox(height: 60),
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
//Button : manage staff
          Center(
              child: ElevatedButton(
                  child: Text("Manage Staff"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ManageStaff()),
                    );
                  })),
// Button: Manage client
          SizedBox(height: 80),
          Center(
              child: ElevatedButton(
                  child: Text("Manage client"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ManageClient()),
                    );
                  })),

          //button: temporary back
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
