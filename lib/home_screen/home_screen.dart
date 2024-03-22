import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List QList = [
    "Q1.The sun is a star?",
    // True
    "Q2.Easter is celebrated on the first Sunday after the first full moon of spring?",
    // False
    "Q3.Spiders are not insects because they have eight legs?",
    // False
    "Q4.Independence Day is celebrated on July 4th in the United States?",
    //True
    "Q5.There are 50 states in the United States of America?",
    //False
    "Q6.Mount Everest is the tallest mountain in the solar system?",
    //False
    "Q7.George Washington was the first president of the United States?",
    // True
    "Q8.You can see the Great Wall of China from space?",
    // False
    "Q9.Abraham Lincoln was the 16th president of the United States?",
    // True
    "Q10.The United Kingdom is located in Europe?",
    // True
    "Q11.Ostriches bury their heads in the sand when they’re scared?",
    // False
    "Q12.Labor Day is celebrated on the first Monday in September in the United States?"
    // True
  ];
  List ansList = [
    "True",
    "False",
    "False",
    "True",
    "False",
    "False",
    "True",
    "False",
    "True",
    "True",
    "False",
    "True",
  ];
  List userAnsList = [];

  int i = 0;
  int j = 0;
  int total = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFBECFF),
      body: Center(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                // height: 500,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                alignment: Alignment.topCenter,
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: Color(0xffA42FC1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.arrow_back_sharp,
                            color: Color(0xffFFFBFE),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, "/");
                          },
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.restart_alt,
                            color: Color(0xffFFFBFE),
                          ),
                          onPressed: () {
                            setState(() {
                              i = 0;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 150, left: 40, right: 40),
                  child: Container(
                    height: 180,
                    decoration: BoxDecoration(
                      color: Color(0xffFFFBFE),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffA42FC1),
                          blurRadius: 3,
                        ),
                        BoxShadow(color: Colors.white, offset: Offset(-2, 0)),
                        BoxShadow(color: Colors.white, offset: Offset(2, 0)),
                      ],
                    ),
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "${QList[i]}",
                        style: TextStyle(fontSize: 18),
                      ),
                    )),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100, right: 100),
                  child: GestureDetector(
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Color(0xffA42FC1)),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "True",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                    ),
                    onTap: i <= QList.length
                        ? () {
                            setState(() {
                              next();
                              userAnsList.add("True");
                              print("ii${userAnsList}");
                            });
                          }
                        : () {},
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 20, left: 100, right: 100),
                  child: GestureDetector(
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Color(0xffA42FC1)),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "False",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                    ),
                    onTap: i <= QList.length
                        ? () {
                            setState(() {
                              next();
                              print("ii${userAnsList}");
                              userAnsList.add("False");
                            });
                          }
                        : () {},
                  ),
                ),
                Visibility(
                  visible: i == QList.length - 1 ? true : false,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 100, right: 100),
                    child: GestureDetector(
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Color(0xffA42FC1)),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Result",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ),
                      ),
                      onTap: () {
                        print("lenth${userAnsList.length}");
                        // setState(() {
                        for (i = 0; i < QList.length; i++) {
                          if (ansList[i] == userAnsList[i]) {
                            total += 1;
                          }
                        }
                        // });
                        Navigator.pushNamed(context, "result",
                            arguments: total);
                        print("dataans$total");
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void next() {
    if (i < QList.length - 1) {
      i++;
    }
  }
}
