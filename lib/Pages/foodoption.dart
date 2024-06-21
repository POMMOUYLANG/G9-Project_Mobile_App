import 'package:flutter/material.dart';

class FoodOption extends StatefulWidget {
  const FoodOption({super.key});

  @override
  State<FoodOption> createState() => _FoodOptionState();
}

class _FoodOptionState extends State<FoodOption> {
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
      body: SingleChildScrollView(
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
                                          Navigator.pushNamed(
                                              context, '/foodmenu');
                                        },
                                        child: Image(
                                          image:
                                              AssetImage('images/image4.jpg'),
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
                          margin: EdgeInsets.only(left: 30),
                          padding: EdgeInsets.only(top: 20),
                          child: Center(
                            child: Column(
                              children: [
                                Text(
                                  "Food Menu",
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Color(0xFF0041C7),
                                      fontWeight: FontWeight.w700),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Start Trend Khmer",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Color(0xFF0041C7),
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        "Food from Here!",
                                        style: TextStyle(
                                            fontSize: 20,
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
                          // margin: EdgeInsets.only(left: 30),
                          padding: EdgeInsets.only(top: 10),
                          child: Center(
                            child: Column(
                              children: [
                                Text(
                                  "Khmer Food",
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Color(0xFF0041C7),
                                      fontWeight: FontWeight.w700),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Let's Go Eatting!",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Color(0xFF0041C7),
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
                                          Navigator.pushNamed(
                                              context, '/khmerfood');
                                        },
                                        child: Image(
                                          image:
                                              AssetImage('images/image3.jpg'),
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
                                          Navigator.pushNamed(
                                              context, '/foodorder');
                                        },
                                        child: Image(
                                          image:
                                              AssetImage('images/image2.jpg'),
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
                          margin: EdgeInsets.only(left: 15),
                          padding: EdgeInsets.only(top: 20),
                          child: Center(
                            child: Column(
                              children: [
                                Text(
                                  "Food Delivery",
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Color(0xFF0041C7),
                                      fontWeight: FontWeight.w700),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Hungry? Let's Order!",
                                        style: TextStyle(
                                            fontSize: 20,
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
                          // margin: EdgeInsets.only(left: 30),
                          padding: EdgeInsets.only(top: 10),
                          child: Center(
                            child: Column(
                              children: [
                                Text(
                                  "Organic Shop",
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Color(0xFF0041C7),
                                      fontWeight: FontWeight.w700),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Health Food!",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Color(0xFF0041C7),
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
                          margin: EdgeInsets.only(left: 10),
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
                                          Navigator.pushNamed(
                                              context, '/khmerfood');
                                        },
                                        child: Image(
                                          image:
                                              AssetImage('images/image1.jpg'),
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
    );
  }
}
