import 'package:first_app/Manage_staff.dart';
import 'package:flutter/material.dart';

class ViewSchedule extends StatefulWidget {
  const ViewSchedule({super.key});

  @override
  State<ViewSchedule> createState() => _ViewScheduleState();
}

class _ViewScheduleState extends State<ViewSchedule> {
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
//button: Back
            SizedBox(height: 300),
            Center(
              child: ElevatedButton(
                  child: Text("Back"),
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
