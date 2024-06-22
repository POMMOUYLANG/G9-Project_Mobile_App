import 'package:flutter/material.dart';

class KhOTPScreen extends StatefulWidget {
  const KhOTPScreen({super.key});

  @override
  State<KhOTPScreen> createState() => _KhOTPScreenState();
}

class _KhOTPScreenState extends State<KhOTPScreen> {
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
            Navigator.pushNamed(context, '/forgotpw_kh');
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 60), // Adjust the height as needed
                  Image(
                    image: AssetImage('images/otpscreen.jpg'),
                    height: 120,
                  ),
                  Text(
                    'លេខកូដបញ្ជាក់',
                    style: TextStyle(
                        fontSize: 23,
                        color: Color(0xFF0041C7),
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Battambang',
                        height: 2),
                  )
                ],
              ),
            ),
            Column(
              children: [
                const Padding(padding: EdgeInsets.all(10)),
                Row(
                  children: [
                    Text(
                      'បញ្ចូលលេខកូដ៖',
                      style: TextStyle(color: Colors.grey[600],fontFamily: 'Battambang', fontSize: 18),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(padding: EdgeInsets.only(top: 70)),
                    Container(
                      margin: const EdgeInsets.all(5.0),
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        border: Border.all(
                          color: Color(0xFF0041C7),
                        ), // Border color and width
                        borderRadius:
                        BorderRadius.circular(10), // Rounded corners
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5.0),
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        border: Border.all(
                          color: Color(0xFF0041C7),
                        ), // Border color and width
                        borderRadius:
                        BorderRadius.circular(10), // Rounded corners
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5.0),
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        border: Border.all(
                          color: Color(0xFF0041C7),
                        ), // Border color and width
                        borderRadius:
                        BorderRadius.circular(10), // Rounded corners
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5.0),
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        border: Border.all(
                          color: Color(0xFF0041C7),
                        ), // Border color and width
                        borderRadius:
                        BorderRadius.circular(10), // Rounded corners
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5.0),
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        border: Border.all(
                          color: Color(0xFF0041C7),
                        ), // Border color and width
                        borderRadius:
                        BorderRadius.circular(10), // Rounded corners
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5.0),
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        border: Border.all(
                          color: Color(0xFF0041C7),
                        ), // Border color and width
                        borderRadius:
                        BorderRadius.circular(10), // Rounded corners
                      ),
                    ),
                  ],
                ),
                Row(
                  // children: [ElevatedButton(onPressed: () {}, child: )],
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(20),
                      height: 80,
                      width: 300,
                      padding: const EdgeInsets.all(10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF0041C7),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/resetpw_kh');
                        },
                        child: const Text(
                          'បញ្ជូនលេខកូដបញ្ជាក់',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Battambang',
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
