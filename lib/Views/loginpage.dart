import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
      body: SafeArea(
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
                'Sign in',
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
                              Navigator.pushNamed(context, '/forgotpw');
                            },
                            child: Text(
                              "Forgot password?",
                              style: TextStyle(
                                color: Color(0xFF0041C7),
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
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
                    Navigator.pushNamed(context, '/foodoption');
                  },
                  child: const Text(
                    'Login',
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
                      'Do you have an account?',
                      style: TextStyle(color: Colors.grey),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/register');
                      },
                      child: Text(
                        ' Create account',
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
    );
  }
}
