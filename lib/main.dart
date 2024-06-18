import 'package:flutter/material.dart';
import 'package:project_mobile_app/Pages/foodorder.dart';
import 'package:project_mobile_app/Pages/forgotpwpage.dart';
import 'package:project_mobile_app/Pages/languagepage.dart';
import 'package:project_mobile_app/Pages/loginpage.dart';
import 'package:project_mobile_app/Pages/otpscreen.dart';
import 'package:project_mobile_app/Pages/welcomepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const WelcomePage(),
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomePage(),
        '/languagepage': (context) => const Languagepage(),
        '/login': (context) => const LoginPage(),
        '/forgotpw': (context) => const ForgotpwPage(),
        '/otpscreen': (context) => const OTPScreen(),
        '/foodorder': (context) => const FoodDelivery(),
      },
    );
  }
}
