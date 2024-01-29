import 'package:first_app/Manage_client.dart';
import 'package:flutter/material.dart';

class ManageAgreement extends StatefulWidget {
  const ManageAgreement({super.key});

  @override
  State<ManageAgreement> createState() => _ManageAgreementState();
}

class _ManageAgreementState extends State<ManageAgreement> {
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
//button: view agreement
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                  child: Text("View agreement"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ManageAgreement()),
                    );
                  }),
            ),
            //button: update agreement
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                  child: Text("Update agreement"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ManageAgreement()),
                    );
                  }),
            ),
            //button: delete agreement
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                  child: Text("Delete agreement"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ManageAgreement()),
                    );
                  }),
            ),

//button: Back
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                  child: Text("Back"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ManageClient()),
                    );
                  }),
            ),
          ]),
        ),
      ),
    );
  }
}
