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
         body: ListView(
        children: [
          PostItem(
            profileName: 'Chef Nak',
            timeAgo: '5 hours ago',
            imageUrl: 'https://example.com/image1.jpg',
            description: 'សម្លចក្រកូម់អាំពិច...',
            likes: 500,
            comments: 200,
          ),
          PostItem(
            profileName: 'Chef Nak',
            timeAgo: '5 hours ago',
            imageUrl: 'https://example.com/image2.jpg',
            description: 'តីក្តាមជជុះ...',
            likes: 500,
            comments: 200,
          ),
          PostItem(
            profileName: 'Food Whisper',
            timeAgo: '3 hours ago',
            imageUrl: 'https://example.com/image3.jpg',
            description: 'អីវ៉ាន់ថ្មីៗ...',
            likes: 350,
            comments: 120,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'For You',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Following',
          ),
        ],
      ),
    );
  }
}
    );
  }
}
