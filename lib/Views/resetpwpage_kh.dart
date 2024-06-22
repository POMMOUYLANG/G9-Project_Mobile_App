import 'package:flutter/material.dart';

class KhResetpwPage extends StatefulWidget {
  const KhResetpwPage({super.key});

  @override
  State<KhResetpwPage> createState() => _KhResetpwPageState();
}

class _KhResetpwPageState extends State<KhResetpwPage> {
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
            Navigator.pushNamed(context, '/otpscreen_kh');
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
                    image: AssetImage('images/resetpw.jpg'),
                    height: 90,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                  ),
                  Text(
                    'បញ្ចូលលេខសម្ងាត់ថ្មី',
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
              padding: const EdgeInsets.only(top: 20),
              child: const TextField(
                decoration: InputDecoration(
                  labelText: 'លេខសម្ងាត់.....',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFF0041C7),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
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
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Color(0xFF0041C7),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20),
              child: const TextField(
                decoration: InputDecoration(
                  labelText: 'បញ្ជាក់លេខសម្ងាត់.....',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFF0041C7),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
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
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Color(0xFF0041C7),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 80,
              width: 300,
              padding: const EdgeInsets.only(top: 30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0041C7),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/login_kh');
                },
                child: const Text(
                  'រក្សាទុក',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
