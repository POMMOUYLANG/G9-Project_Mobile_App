import 'package:flutter/material.dart';

class FoodDelivery extends StatefulWidget {
  const FoodDelivery({super.key});

  @override
  State<FoodDelivery> createState() => _FoodDeliveryState();
}

class _FoodDeliveryState extends State<FoodDelivery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          color: const Color(0xFF0041C7),
          iconSize: 40,
          onPressed: () {
            Navigator.pushNamed(context, '/foodoption');
          },
        ),
        title: const Text(
          'KROYA',
          style: TextStyle(
            color: Color(0xFF0041C7),
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.search,
                  color: Color(0xFF0041C7),
                ),
                iconSize: 40,
                onPressed: () {
                  // Handle search icon press
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.notifications,
                  color: Color(0xFF0041C7),
                ),
                iconSize: 40,
                onPressed: () {
                  // Handle notifications icon press
                },
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(),
    );
  }
}
