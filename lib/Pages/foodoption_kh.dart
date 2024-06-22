import 'package:flutter/material.dart';

class KhFoodOption extends StatefulWidget {
  const KhFoodOption({super.key});

  @override
  State<KhFoodOption> createState() => _KhFoodOptionState();
}

class _KhFoodOptionState extends State<KhFoodOption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          color: const Color(0xFF0041C7),
          iconSize: 40,
          onPressed: () {
            Navigator.pushNamed(context, '/foodmenu');
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
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'images/bg.png', // Replace with your background image path
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    width: 150,
                                    height: 170,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 2,
                                        color: Color(0xFF0041C7),
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                    ),
                                    child: Container(
                                      padding: EdgeInsets.only(top: 20),
                                      child: Column(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              Navigator.pushNamed(context, '/foodmenu');
                                            },
                                            child: Image(
                                              image: AssetImage('images/image4.jpg'),
                                              width: 130,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 40),
                              padding: EdgeInsets.only(top: 20),
                              child: Center(
                                child: Column(
                                  children: [
                                    Text(
                                      "ម្ហូបខ្មែរ",
                                      style: TextStyle(
                                          fontSize: 25,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 10),
                                      child: Column(
                                        children: [
                                          Text(
                                            "នាំយកម្ហូបខ្មែរ",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            "ទៅកាន់ពិភពលោក!",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Color(0xFF0041C7),
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ) // Con
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 10),
                              child: Center(
                                child: Column(
                                  children: [
                                    Text(
                                      "ទំព័រអាហារ",
                                      style: TextStyle(
                                          fontSize: 25,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 10),
                                      child: Column(
                                        children: [
                                          Text(
                                            "រីករាយនិងការញាំអាហារ!",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ), // Con
                            Container(
                              margin: EdgeInsets.only(left: 30),
                              child: Column(
                                children: [
                                  Container(
                                    width: 150,
                                    height: 170,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 2,
                                        color: Color(0xFF0160C9),
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                    ),
                                    child: Container(
                                      padding: EdgeInsets.only(top: 20),
                                      child: Column(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              Navigator.pushNamed(context, '/khmerfood');
                                            },
                                            child: Image(
                                              image: AssetImage('images/image3.jpg'),
                                              width: 130,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    width: 150,
                                    height: 170,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 2,
                                        color: Color(0xFF0D85D8),
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                    ),
                                    child: Container(
                                      padding: EdgeInsets.only(top: 20),
                                      child: Column(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              Navigator.pushNamed(context, '/foodorder');
                                            },
                                            child: Image(
                                              image: AssetImage('images/image2.jpg'),
                                              width: 130,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 40),
                              padding: EdgeInsets.only(top: 20),
                              child: Center(
                                child: Column(
                                  children: [
                                    Text(
                                      "ដឹកជញ្ជូនអាហារ",
                                      style: TextStyle(
                                          fontSize: 25,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 10),
                                      child: Column(
                                        children: [
                                          Text(
                                            "តោះកាម៉ង់ឥឡូវនេះ!",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ) // Con
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 30),
                              padding: EdgeInsets.only(top: 10),
                              child: Center(
                                child: Column(
                                  children: [
                                    Text(
                                      "ទំនិញធម្មជាតិ",
                                      style: TextStyle(
                                          fontSize: 25,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        fontFamily: 'Battambang'
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 10),
                                      child: Column(
                                        children: [
                                          Text(
                                            "អាហារសុខភាព!",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ), // Con
                            Container(
                              margin: EdgeInsets.only(left: 40),
                              child: Column(
                                children: [
                                  Container(
                                    width: 150,
                                    height: 170,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 2,
                                        color: Color(0xFF1CA3DE),
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                    ),
                                    child: Container(
                                      padding: EdgeInsets.only(top: 20),
                                      child: Column(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              Navigator.pushNamed(context, '/khmerfood');
                                            },
                                            child: Image(
                                              image: AssetImage('images/image1.jpg'),
                                              width: 130,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
