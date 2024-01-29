import 'package:first_app/Manage_staff.dart';
import 'package:flutter/material.dart';

class AssignStaff extends StatefulWidget {
  const AssignStaff({super.key});

  @override
  State<AssignStaff> createState() => _AssignStaffState();
}

class _AssignStaffState extends State<AssignStaff> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(children: [
            //staff
            SizedBox(height: 80),
            Text(
              'Staff',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 20),
            //staff
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
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
                        border: InputBorder.none, hintText: 'Staff list'),
                  ),
                ),
              ),
            ),

            //client

            SizedBox(height: 40),
            Text(
              'client',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 20),
            //staff
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
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
                        border: InputBorder.none, hintText: 'Client list'),
                  ),
                ),
              ),
            ),

            //button: save
            SizedBox(height: 40),
            Center(
              child: ElevatedButton(
                  child: Text("Save"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ManageStaff()),
                    );
                  }),
            ),
          ]),
        ),
      ),
    );
  }
}
