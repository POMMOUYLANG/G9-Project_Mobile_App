import 'package:flutter/material.dart';
import 'package:project_mobile_app/Pages/fooddelivery.dart';
import 'package:project_mobile_app/Pages/foodmenu.dart';
import 'package:project_mobile_app/Pages/foodoption.dart';
import 'package:project_mobile_app/Pages/khmerfood.dart';
import 'package:project_mobile_app/Pages/foodorder.dart';
import 'package:project_mobile_app/Views/forgotpwpage.dart';
import 'package:project_mobile_app/Pages/languagepage.dart';
import 'package:project_mobile_app/Views/loginpage.dart';
import 'package:project_mobile_app/Views/otpscreen.dart';
import 'package:project_mobile_app/Views/registerpage.dart';
import 'package:project_mobile_app/Views/resetpwpage.dart';
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
        '/register': (context) => const RegisterPage(),
        '/forgotpw': (context) => const ForgotpwPage(),
        '/otpscreen': (context) => const OTPScreen(),
        '/resetpw': (context) => const ResetpwPage(),
        '/foodorder': (context) => const FoodOrder(),
        '/khmerfood': (context) => const KhmerFood(),
        '/foodmenu': (context) => const FoodMenu(),
        '/foodoption': (context) => const FoodOption(),
        '/fooddelivery': (context) => const FoodDelivery(),
      },
    );
  }
}
