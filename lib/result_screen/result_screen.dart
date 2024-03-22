import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    int total = ModalRoute.of(context)!.settings.arguments as int;

    return Scaffold(
      backgroundColor: Color(0xffFBECFF),
      body: Center(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Expanded(
                child: Container(
                  // height: 500,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  alignment: Alignment.topCenter,
                  child: Expanded(
                    child: Container(
                      height: 280,
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
                                Navigator.pushNamed(context, "home");
                              },
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.restart_alt,
                                color: Color(0xffFFFBFE),
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Center(
                    child: Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 18,
                        ),
                        child: Column(
                          children: [
                            Text(
                              "Your Score",
                              style: TextStyle(
                                  color: Color(0xffA42FC1), fontSize: 19),
                            ),
                            Text(
                              "$total",
                              style: TextStyle(
                                  color: Color(0xffA42FC1),
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "pt",
                              style: TextStyle(
                                  color: Color(0xffA42FC1), fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 210, left: 50, right: 50),
                  child: Expanded(
                    child: Container(
                      height: 170,
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
                          child: Text(
                        "$total",
                        style: TextStyle(fontSize: 25),
                      )),
                    ),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: GestureDetector(
                        child: Icon(Icons.replay_circle_filled_sharp,
                            color: Color(0xff1D7FA9), size: 40),
                        onTap: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 150),
                      child: GestureDetector(
                        child: Icon(Icons.visibility_outlined,
                            color: Color(0xffCB9771), size: 40),
                        onTap: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 110),
                      child: GestureDetector(
                        child: Icon(Icons.share_sharp,
                            color: Color(0xff6680DB), size: 40),
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Text("Play Again"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 100),
                      child: Text("Review Answer"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: Text("Share Score"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 35,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: GestureDetector(
                        child: Icon(Icons.picture_as_pdf_outlined,
                            color: Color(0xff37AFA1), size: 40),
                        onTap: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 150),
                      child: GestureDetector(
                        child: Icon(Icons.home_outlined,
                            color: Color(0xffAD8AE8), size: 40),
                        onTap: () {
                          Navigator.pushNamed(context, "home");
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 110),
                      child: GestureDetector(
                        child: Icon(Icons.settings_outlined,
                            color: Color(0xff5F6A6E), size: 40),
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 35),
                      child: Text("Generate PDF"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 118),
                      child: Text("Home"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 90),
                      child: Text("LeaderBoard"),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
