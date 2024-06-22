import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
            Navigator.pushNamed(context, '/login');
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image(
                image: AssetImage('images/logo/kroya02.png'),
                width: 200,
                height: 200,
              ),
              Text(
                'Sing up',
                style: TextStyle(
                    fontSize: 25,
                    color: Color(0xFF0041C7),
                    fontWeight: FontWeight.w700),
              ),
              Container(
                padding: const EdgeInsets.all(25),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 30),
                      child: const TextField(
                        decoration: InputDecoration(
                          labelText: 'Name........',
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
                          prefixIcon: Icon(Icons.person, color: Color(0xFF0041C7)),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 20),
                      child: const TextField(
                        decoration: InputDecoration(
                          labelText: 'Phone Number........',
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
                          labelText: 'Password........',
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
                          prefixIcon: Icon(Icons.lock, color: Color(0xFF0041C7)),
                        ),
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 300,
                      margin: EdgeInsets.only(top: 40),
                      padding: const EdgeInsets.all(10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color(0xFF0041C7),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/foodoption');
                        },
                        child: const Text(
                          'Create new account',
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
            ],
          ),
        ),
      ),
    );
  }
}
