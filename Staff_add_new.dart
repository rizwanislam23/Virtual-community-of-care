import 'package:first_app/Manage_staff.dart';
import 'package:flutter/material.dart';

class AddNew extends StatefulWidget {
  const AddNew({super.key});

  @override
  State<AddNew> createState() => _AddNewState();
}

class _AddNewState extends State<AddNew> {
  TextEditingController phoneControll = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
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
                        border: InputBorder.none, hintText: 'Enter name'),
                  ),
                ),
              ),
            ),

            //Address
            SizedBox(height: 40),
            Text(
              'Address',
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
                        border: InputBorder.none, hintText: 'Enter Address'),
                  ),
                ),
              ),
            ),

//pnone validation
            SizedBox(height: 40),

            Text(
              'Phone Number',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),

            // Phone Number
            SizedBox(height: 40),

            Form(
              key: _formkey,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  controller: phoneControll,
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Enter Phone Number'),
                  keyboardType: TextInputType.phone,
                  onChanged: (value) {
                    _formkey.currentState?.validate();
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "please Enter a Phone Number";
                    } else if (!RegExp(r'^(?:[+0][1-9])?[0-9]{10,12}$')
                        .hasMatch(value)) ;
                    {
                      return "please Enter a Valid Phone Number";
                    }
                  },
                ),
              ),
            ),

            /*
            SizedBox(height: 40),
            Text(
              'Phone Number',
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
                        border: InputBorder.none,
                        hintText: 'Enter Phone Number'),
                  ),
                ),
              ),
            ),
            */

            //button: save
            SizedBox(height: 40),
            Center(
                child: ElevatedButton(
                    child: Text("save"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ManageStaff()),
                      );
                    })),
          ]),
        ),
      ),
    );
  }
}
