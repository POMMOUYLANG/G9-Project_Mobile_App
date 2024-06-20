import 'package:flutter/material.dart';

class ResetpwPage extends StatefulWidget {
  const ResetpwPage({super.key});

  @override
  State<ResetpwPage> createState() => _ResetpwPageState();
}

class _ResetpwPageState extends State<ResetpwPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: const Color.fromARGB(255, 7, 87, 152),
          iconSize: 40,
          onPressed: () {
            Navigator.pushNamed(context, '/otpscreen');
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
                    'Enter new password',
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 7, 87, 152),
                        height: 2),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20),
              child: const TextField(
                decoration: InputDecoration(
                  labelText: 'Password........',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 10, 73, 189),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 10, 73, 189),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(10.0)), // Add rounded corners
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 10, 73, 189),
                      width: 2.0,
                    ),
                  ),
                  prefixIcon: Icon(Icons.lock, color: Colors.blue),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20),
              child: const TextField(
                decoration: InputDecoration(
                  labelText: 'Confirm Password........',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 10, 73, 189),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 10, 73, 189),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(10.0)), // Add rounded corners
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 10, 73, 189),
                      width: 2.0,
                    ),
                  ),
                  prefixIcon: Icon(Icons.lock, color: Colors.blue),
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
                  backgroundColor: const Color.fromARGB(255, 10, 73, 189),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/foodorder');
                },
                child: const Text(
                  'Save',
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
