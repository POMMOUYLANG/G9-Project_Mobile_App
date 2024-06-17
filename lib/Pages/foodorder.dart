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
          color: const Color.fromARGB(255, 7, 87, 152),
          iconSize: 40,
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
        ),
        title: const Text(
          'KROYA',
          style: TextStyle(
            color: Color.fromARGB(255, 10, 110, 192),
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 7, 87, 152),
                ),
                iconSize: 40,
                onPressed: () {
                  // Handle search icon press
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.notifications,
                  color: Color.fromARGB(255, 7, 87, 152),
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
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Enjoy with your meal!',
                  style: TextStyle(
                      fontSize: 22,
                      color: Color.fromARGB(255, 7, 87, 152),
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Up to 50% off',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      height: 3,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomBox(
                        color: Color.fromARGB(255, 253, 254, 255),
                        child: Image(
                          image: AssetImage('images/koi.jpg'),
                          width: 200,
                          height: 120,
                        ),
                      ),
                      SizedBox(width: 16), // Space between the two boxes
                      CustomBox(
                        color: Color.fromARGB(255, 253, 254, 255),
                        child: Image(image: AssetImage('images/koi.jpg')),
                      ),
                      SizedBox(width: 16), // Space between the two boxes
                      CustomBox(
                        color: Color.fromARGB(255, 253, 254, 255),
                        child: Image(image: AssetImage('images/koi.jpg')),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Top Brand',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(4),
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MiniBox(
                    color: Color.fromARGB(255, 253, 254, 255),
                    child: Image(
                      image: AssetImage('images/kfc.png'),
                    ),
                  ),
                  MiniBox(
                    color: Color.fromARGB(255, 253, 254, 255),
                    child: Image(
                      image: AssetImage('images/pizza.png'),
                    ),
                  ),
                  MiniBox(
                    color: Color.fromARGB(255, 253, 254, 255),
                    child: Image(
                      image: AssetImage('images/tubecoffee.png'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Nearest you',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(4),
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  XLBox(
                    color: Color.fromARGB(255, 253, 254, 255),
                    child: Image(
                      image: AssetImage('images/pizzacomany.jpg'),
                      width: 300,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 16), // Space between the boxes
                  XLBox(
                    color: Color(0xff7c94b6),
                    child: Text(
                      'Box 2',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 16), // Space between the boxes
                  XLBox(
                    color: Color(0xff7c94b6),
                    child: Text(
                      'Box 3',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// This is CustomBox of large box
class CustomBox extends StatelessWidget {
  final Color color;
  final Widget child;

  CustomBox({required this.color, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DecoratedBox(
            decoration: BoxDecoration(),
            child: child,
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: color,
        border: Border.all(
          width: 0,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}

// THis is CustomBox of mini box
class MiniBox extends StatelessWidget {
  final Color color;
  final Widget child;

  MiniBox({required this.color, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 130,
      child: Center(
        child: DecoratedBox(
          decoration: BoxDecoration(),
          child: child,
        ),
      ),
      decoration: BoxDecoration(
        color: color,
        border: Border.all(
          width: 1,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}

// THis is XLBox of xl box
class XLBox extends StatelessWidget {
  final Color color;
  final Widget child;

  XLBox({required this.color, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height: 180,
      child: Center(
        child: DecoratedBox(
          decoration: BoxDecoration(),
          child: child,
        ),
      ),
      decoration: BoxDecoration(
        color: color,
        // border: Border.all(width: 1, color: Colors.grey),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
