import 'package:first_app/Employee_home.dart';
import 'package:flutter/material.dart';

class EmployeeViewCharting extends StatefulWidget {
  const EmployeeViewCharting({super.key});

  @override
  State<EmployeeViewCharting> createState() => _EmployeeViewChartingState();
}

class _EmployeeViewChartingState extends State<EmployeeViewCharting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(children: [
            //Recipint
            SizedBox(height: 80),
            Text(
              'Client',
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
//event box
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
                        hintText: 'Staff can view client data'),
                  ),
                ),
              ),
            ),

            //button: Back
            SizedBox(height: 60),
            Center(
              child: ElevatedButton(
                  child: Text("Back"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EmployeeHome()),
                    );
                  }),
            ),
          ]),
        ),
      ),
    );
  }
}
