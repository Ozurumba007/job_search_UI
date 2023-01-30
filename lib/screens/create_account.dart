// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:project_3/screens/login.dart';
import 'package:project_3/screens/otp.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'Enter Phone Number',
                style: TextStyle(color: Colors.blue, fontSize: 25),
              ),
              SizedBox(
                height: 10,
              ),
              Text('A 4-digit code would be sent'),
              SizedBox(
                height: 10,
              ),
              Text('to your phone number'),
              SizedBox(
                height: 50,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Phone Number',
                ),
                autofocus: true,
                keyboardType: TextInputType.phone,
              ),
              Spacer(),
              SizedBox(
                height: 50,
                width: 450,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => OtpPage()));
                  },
                  child: Text('Proceed'),
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
