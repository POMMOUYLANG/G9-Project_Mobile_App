import 'package:flutter/material.dart';
import 'package:project_mobile_app/Pages/loginpage.dart';
import 'package:project_mobile_app/Pages/otpscreen.dart';

class Languagepage extends StatefulWidget {
  const Languagepage({super.key});

  @override
  State<Languagepage> createState() => _LanguagepageState();
}

class _LanguagepageState extends State<Languagepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 10, 73, 189),
      body: SafeArea(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/languagepage');
              },
              child: const Image(
                image: AssetImage('images/logo/kroya.png'),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: const Column(
                children: [
                  Text(
                    'Please choose a language',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40), // Add top padding here
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 70, vertical: 20),
                  textStyle: const TextStyle(fontSize: 22),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'images/cambodia.png', // Replace with your image asset
                      width: 30,
                      height: 30,
                    ),
                    const SizedBox(width: 30), // Space between image and text
                    const Text('Khmer'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10), // Add top padding here
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const OTPScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 70, vertical: 20),
                  textStyle: const TextStyle(fontSize: 22),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'images/uk.png', // Replace with your image asset
                      width: 30,
                      height: 30,
                    ),
                    const SizedBox(width: 30), // Space between image and text
                    const Text('English'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Button with Image and Text'),
//         ),
//         body: Center(
//           child: ElevatedButton(
//             onPressed: () {
//               // Handle button press
//             },
//             style: ElevatedButton.styleFrom(
//               padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//               textStyle: TextStyle(fontSize: 18),
//             ),
//             child: Row(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Image.asset(
//                   'assets/icon.png', // Replace with your image asset
//                   width: 24,
//                   height: 24,
//                 ),
//                 SizedBox(width: 10), // Space between image and text
//                 Text('Button Text'),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
