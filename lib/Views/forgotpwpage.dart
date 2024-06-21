import 'package:flutter/material.dart';

class ForgotpwPage extends StatefulWidget {
  const ForgotpwPage({super.key});

  @override
  State<ForgotpwPage> createState() => _ForgotpwPageState();
}

class _ForgotpwPageState extends State<ForgotpwPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        appBar: AppBar(
          backgroundColor: const Color(0xFFFFFFFF),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: const Color(0xFF0041C7),
            iconSize: 40,
            onPressed: () {
              Navigator.pushNamed(context, '/languagepage');
            },
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    SizedBox(height: 60), // Adjust the height as needed
                    Image(
                      image: AssetImage('images/forgotpw.jpg'),
                      height: 120,
                    ),
                    Text(
                      'Forgt password ',
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF0041C7),
                          height: 2),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        "Please enter phone number to get verification",
                        style: TextStyle(),
                      ),
                      Text("OTP code for new password!")
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 30),
                child: const TextField(
                  decoration: InputDecoration(
                    labelText: 'Phone Number........',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(10.0)), // Add rounded corners
                      borderSide: BorderSide(
                        color: Color(0xFF0041C7),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(10.0)), // Add rounded corners
                      borderSide: BorderSide(
                        color: Color(0xFF0041C7),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(10.0)), // Add rounded corners
                      borderSide: BorderSide(
                        color: Color(0xFF0041C7),
                        width: 2.0,
                      ),
                    ),
                    prefixIcon: Icon(Icons.phone, color: Color(0xFF0041C7)),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                height: 80,
                width: 300,
                padding: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF0041C7),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/otpscreen');
                  },
                  child: const Text(
                    'Send',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
// 