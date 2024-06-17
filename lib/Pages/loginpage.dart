import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Padding(padding: EdgeInsets.only(top: 100)),
              Image(
                image: AssetImage('images/logo/kroya02.png'),
                width: 200,
                height: 200,
              )
            ],
          ),
        ),
      ),
    );
  }
}
