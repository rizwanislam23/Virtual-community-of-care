import 'package:first_app/Manage_client.dart';
import 'package:flutter/material.dart';

class Remove extends StatefulWidget {
  const Remove({super.key});

  @override
  State<Remove> createState() => _RemoveState();
}

class _RemoveState extends State<Remove> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(children: [
            //name
            SizedBox(height: 40),
            Text(
              'Name',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 40),

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
                        border: InputBorder.none, hintText: 'client list'),
                  ),
                ),
              ),
            ),

            //button: delete
            SizedBox(height: 40),
            Center(
                child: ElevatedButton(
                    child: Text("Delete"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Remove()),
                      );
                    })),
            //button: back
            SizedBox(height: 40),
            Center(
                child: ElevatedButton(
                    child: Text("back"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ManageClient()),
                      );
                    })),
          ]),
        ),
      ),
    );
  }
}
