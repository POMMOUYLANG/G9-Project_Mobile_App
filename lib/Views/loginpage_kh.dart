import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class KhLoginPage extends StatefulWidget {
  const KhLoginPage({super.key});

  @override
  State<KhLoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<KhLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: const Color(0xFF0041C7),
          iconSize: 30,
          onPressed: () {
            Navigator.pushNamed(context, '/languagepage');
          },
        ),
      ),
      body: SafeArea(
        
        child: Container(
          margin: EdgeInsets.all(10),
          child: Center(
          
            child: Column(
              children: [
                // Padding(padding: EdgeInsets.only(top: 100)),
                Image(
                  image: AssetImage('images/logo/kroya02.png'),
                  width: 200,
                  height: 200,
                ),
                Text(
                  'ចូលទៅគណនីរបស់អ្នក',
                  style: TextStyle(
                      fontSize: 25,
                      color: Color(0xFF0041C7),
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Battambang',
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 30),
                        child: const TextField(
                          decoration: InputDecoration(
                            labelText: 'លេខទូរស័ព្ទ.....',
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
                            prefixIcon: Icon(Icons.phone, color: Color(0xFF0041C7)),
                          ),
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
                            prefixIcon: Icon(Icons.key, color: Color(0xFF0041C7)),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, '/forgotpw_kh');
                              },
                              child: Text(
                                "ភ្លេចពាក្យសម្ងាត់?",
                                style: TextStyle(
                                  color: Color(0xFF0041C7),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Battambang'
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 80,
                  width: 300,
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF0041C7),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/foodoption_kh');
                    },
                    child: const Text(
                      'ចូលគណនី',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Text(
                        'មិនទាន់មានគណនីឬ?',
                        style: TextStyle(color: Colors.grey),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/register_kh');
                        },
                        child: Text(
                          ' បង្កើតគណនី',
                          style: TextStyle(
                            color: Color(0xFF0041C7),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
