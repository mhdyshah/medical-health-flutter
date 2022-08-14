// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mentalhealthapp/utilities/emoticon_face.dart';
import 'package:mentalhealthapp/utilities/list_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF277EBE),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Home",
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  // greeting row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "ShahLand",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Lobster",
                              fontSize: 27,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "24 Jan, 2022",
                            style: TextStyle(
                              color: Colors.blue[100],
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF3F8CC6),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.all(4),
                        child: Icon(
                          Icons.notifications,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),

                  // search bar
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xFF408DC5),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search_rounded,
                          color: Colors.white70,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Search",
                          style: TextStyle(color: Colors.white70),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),

                  // how do you feel?
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "How do you feel?",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: "RobotoSlab",
                          fontSize: 20,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz_rounded,
                        color: Color.fromARGB(255, 185, 32, 83),
                        size: 30,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),

                  // 4 Emojies
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // bad
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: "😣",
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Badly",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      // fine
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: "😊",
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Fine",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      // well
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: "😁",
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Well",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      // excellent
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: "🥳",
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Excellent",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                padding: EdgeInsets.all(25),
                child: Center(
                  child: Column(
                    children: [
                      // Excersises heading
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Excercises",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Icon(
                            Icons.more_horiz_rounded,
                            size: 30,
                            color: Color.fromARGB(255, 185, 32, 83),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      // listview of excersises
                      Expanded(
                        child: ListView(
                          children: [
                            Excersises(
                                color: Color(0xFF9C609D),
                                icon: Icons.favorite_rounded,
                                excersiseName: "Speaking Skills",
                                numberOfExcersise: 16),
                            Excersises(
                                color: Color.fromARGB(255, 241, 149, 144),
                                icon: Icons.audiotrack_rounded,
                                excersiseName: "Listening Skills",
                                numberOfExcersise: 23),
                            Excersises(
                                color: Color(0xFF6E92CF),
                                icon: Icons.book_rounded,
                                excersiseName: "Reading Skills",
                                numberOfExcersise: 6),
                            Excersises(
                                color: Color(0xFF7AE68F),
                                icon: Icons.format_list_numbered_sharp,
                                excersiseName: "Writing Skills",
                                numberOfExcersise: 10),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
