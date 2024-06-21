import 'package:flutter/material.dart';

class KhmerFood extends StatefulWidget {
  const KhmerFood({super.key});

  @override
  State<KhmerFood> createState() => _KhmerFoodState();
}

class _KhmerFoodState extends State<KhmerFood> {
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
            Navigator.pushNamed(context, '/foodorder');
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
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(20),
                      padding:
                          EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Color(0xFF0041C7),
                          width: 2,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Text(
                        'KHMER SALAD',
                        style: TextStyle(
                          color: Color(0xFF0041C7),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FoodCard(
                            imagePath:
                                'images/food1.jpg', // replace with your image path
                            label: 'នំបញ្ចុកសម្លប្រហុក',
                          ),
                          FoodCard(
                            imagePath:
                                'images/food2.jpg', // replace with your image path
                            label: 'ញ៉ាំស្កៃ',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FoodCard(
                            imagePath:
                                'images/food3.jpg', // replace with your image path
                            label: 'អាម៉ុកត្រី',
                          ),
                          FoodCard(
                            imagePath:
                                'images/food4.jpg', // replace with your image path
                            label: 'ត្រីអាំងទឹកត្រីស្វាយ',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FoodCard(
                            imagePath:
                                'images/food5.jpg', // replace with your image path
                            label: 'នំបញ្ចុកទឹកត្រីផ្អែម',
                          ),
                          FoodCard(
                            imagePath:
                                'images/food6.jpg', // replace with your image path
                            label: 'នំបញ្ចុកសម្លរខ្មែរ',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.only(bottom: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FoodCard(
                            imagePath:
                                'images/food1.jpg', // replace with your image path
                            label: 'នំបញ្ចុកសម្លប្រហុក',
                          ),
                          FoodCard(
                            imagePath:
                                'images/food2.jpg', // replace with your image path
                            label: 'ញ៉ាំស្កៃ',
                          ),
                        ],
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

class FoodCard extends StatelessWidget {
  final String imagePath;
  final String label;

  const FoodCard({super.key, required this.imagePath, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFF0041C7),
      ),
      child: Column(
        children: [
          Image.asset(
            imagePath,
            width: 150,
            height: 150,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
