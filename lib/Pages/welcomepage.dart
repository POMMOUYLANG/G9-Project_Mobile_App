import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: const Color(0xFF0041C7),
      body: Container(
        margin: EdgeInsets.only(top: 200),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/languagepage');
              },
              child: Center (
                child: const Image(
                    height: 350,
                    image: AssetImage('images/logo/kroya.png',)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
