import 'package:flutter/material.dart';

class KhForgotpwPage extends StatefulWidget {
  const KhForgotpwPage({super.key});

  @override
  State<KhForgotpwPage> createState() => _KhForgotpwPageState();
}

class _KhForgotpwPageState extends State<KhForgotpwPage> {
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
                      'ភ្លេចពាក្យសម្ងាត់',
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
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
                        "សូមបញ្ចូលលេខទូរស័ព្ទ ដើម្បីទទួលបានលេខកូដOTP",
                        style: TextStyle(),
                      ),
                      Text("ក្នុងការបង្កើតលេខសម្ងាត់ថ្មី!")
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 30),
                child: const TextField(
                  decoration: InputDecoration(
                    labelText: 'លេខទូរស័ព្ទ.....',
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
                    Navigator.pushNamed(context, '/otpscreen_kh');
                  },
                  child: const Text(
                    'បញ្ជូនលេខកូដ',
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