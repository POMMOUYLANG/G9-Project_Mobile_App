import 'package:flutter/material.dart';

class FoodMenu extends StatefulWidget {
  const FoodMenu({super.key});

  @override
  State<FoodMenu> createState() => _FoodMenuState();
}

class _FoodMenuState extends State<FoodMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          color: Color(0xFF0041C7),
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
      body: Container(
        padding: EdgeInsets.all(5),
        // margin: EdgeInsets.only(top: 10),
        color: Color(0xFF0041C7), // Set the background color here
        child: SingleChildScrollView(
          child: Column(
            children: [
              MenuCard(
                imagePath: 'images/pic1.jpg', // replace with your image path
                chefName: 'Chef Nak',
              ),
              Container(
                color: Color(0xFF0041C7),
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'FOOD MENU',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // MenuButton(label: 'KHMER SOUP'),
              // MenuButton(label: 'FRIED'),

              MenuButton(
                label: 'KHMER SOUP',
                onTap: () {
                  Navigator.pushNamed(context, '/khmerfood');
                },
              ),
              MenuButton(
                label: 'FRIED',
                onTap: () {
                  Navigator.pushNamed(context, '/khmerfood');
                },
              ),
              MenuButton(
                label: 'KHMER SALAD',
                onTap: () {
                  Navigator.pushNamed(context, '/khmerfood');
                },
              ),
              MenuCard(
                imagePath: 'images/pic1.jpg', // replace with your image path
                chefName: 'Chef Nak',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  final String imagePath;
  final String chefName;

  const MenuCard({super.key, required this.imagePath, required this.chefName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imagePath,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 10,
            bottom: 10,
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage:
                      AssetImage('images/pic1.jpg'), // replace with chef image
                ),
                SizedBox(width: 5),
                Text(
                  chefName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const MenuButton({super.key, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Color(0xFF0041C7),
          backgroundColor: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: onTap,
        child: Text(
          label,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
