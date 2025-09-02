// ignore: file_names
// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class Day9 extends StatefulWidget {
  const Day9({super.key});

  @override
  State<Day9> createState() => _Day9State();
}

class _Day9State extends State<Day9> {
  get confirmPass => null;

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();

    TextEditingController EmailController = TextEditingController();

    TextEditingController PhoneController = TextEditingController();

    TextEditingController PasswordController = TextEditingController();

    TextEditingController ConfirmPasswordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Signup Screen"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: 'Full Name',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                controller: EmailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                controller: PhoneController,
                decoration: InputDecoration(
                  labelText: 'Phone',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.phone),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                controller: PasswordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                controller: ConfirmPasswordController,
                decoration: InputDecoration(
                  labelText: 'ConfirmPassword',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock_outline),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              ElevatedButton(
                onPressed: () {
                  String name = nameController.text;
                  String email = EmailController.text;
                  String phone = PhoneController.text;
                  String pass = PasswordController.text;
                  // ignore: non_constant_identifier_names
                  String ConfirmPass = ConfirmPasswordController.text;
                  if (name.isEmpty ||
                      email.isEmpty ||
                      phone.isEmpty ||
                      pass.isEmpty ||
                      ConfirmPass.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('All fields are required!'),
                      ),
                    );
                  } else if (pass != confirmPass) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Passwords do not match!")),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content: Text("Signup Successful 🎉 Welcome $name")),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                ),
                child: Center(
                  child: Text("Signup"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
