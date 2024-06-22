//import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:project_mobile_app/Pages/foodmenu.dart';
import 'package:project_mobile_app/Pages/foodoption.dart';
import 'package:project_mobile_app/Pages/foodoption_kh.dart';
import 'package:project_mobile_app/Pages/khmerfood.dart';
import 'package:project_mobile_app/Pages/foodorder.dart';
import 'package:project_mobile_app/Views/forgotpwpage.dart';
import 'package:project_mobile_app/Pages/languagepage.dart';
import 'package:project_mobile_app/Views/forgotpwpage_kh.dart';
import 'package:project_mobile_app/Views/loginpage.dart';
import 'package:project_mobile_app/Views/loginpage_kh.dart';
import 'package:project_mobile_app/Views/otpscreen.dart';
import 'package:project_mobile_app/Views/otpscreen_kh.dart';
import 'package:project_mobile_app/Views/registerpage.dart';
import 'package:project_mobile_app/Views/registerpage_kh.dart';
import 'package:project_mobile_app/Views/resetpwpage.dart';
import 'package:project_mobile_app/Pages/welcomepage.dart';
import 'package:project_mobile_app/Views/resetpwpage_kh.dart';

void main() {
  runApp(
    // DevicePreview(
    //   enabled: true,
    //   builder: (context)=>
      const MyApp()
      //),
    
    );
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
        '/login_kh': (context) => const KhLoginPage(),
        '/register': (context) => const RegisterPage(),
        '/register_kh': (context) => const KhRegisterPage(),
        '/forgotpw': (context) => const ForgotpwPage(),
        '/forgotpw_kh': (context) => const KhForgotpwPage(),
        '/otpscreen': (context) => const OTPScreen(),
        '/otpscreen_kh': (context) => const KhOTPScreen(),
        '/resetpw': (context) => const ResetpwPage(),
        '/resetpw_kh': (context) => const KhResetpwPage(),
        '/foodorder': (context) => const FoodDelivery(),
        '/khmerfood': (context) => const KhmerFood(),
        '/foodmenu': (context) => const FoodMenu(),
        '/foodoption': (context) => const FoodOption(),
        '/foodoption_kh': (context) => const KhFoodOption(),
      
      },
    );
  }
}
