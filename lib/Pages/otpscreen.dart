import 'package:flutter/material.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
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
            Navigator.pushNamed(context, '/');
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
                    'Verification Code ',
                    style: TextStyle(
                        fontSize: 23,
                        color: Color.fromARGB(255, 7, 87, 152),
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
                      'Enter OTP code :',
                      style: TextStyle(color: Colors.grey[600], fontSize: 18),
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
                            color: Colors.blue), // Border color and width
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
                            color: Colors.blue), // Border color and width
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
                            color: Colors.blue), // Border color and width
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
                            color: Colors.blue), // Border color and width
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
                            color: Colors.blue), // Border color and width
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
                            color: Colors.blue), // Border color and width
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
                          backgroundColor:
                              const Color.fromARGB(255, 10, 73, 189),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Submit',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
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
