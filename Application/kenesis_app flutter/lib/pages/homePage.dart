import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff06283D),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 40, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: topBar(),
                  padding: EdgeInsets.only(right: 30, left: 30),
                ),
                Center(
                  child: Container(
                    width: 300,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Color(0xff47B5FF),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Tasks",
                                style: GoogleFonts.jost(
                                    textStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.7),
                                  fontStyle: FontStyle.italic,
                                  fontSize: 20,
                                )),
                              ),
                              Text(
                                "6/10 tasks",
                                style: GoogleFonts.jost(
                                    textStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 24,
                                )),
                              ),
                            ],
                          ),
                          Container(
                            height: 55,
                            width: 55,
                            child: Image.asset(
                              "assets/images/checklist.png",
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                toDoSectionHome(),
                completedTaskSection()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//********************TOP BAR******************************************//
class topBar extends StatelessWidget {
  const topBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: SizedBox.fromSize(
              size: Size.square(70), // Image radius
              child: Image.asset('assets/images/sachinNew.jpg',
                  alignment: FractionalOffset.topCenter, fit: BoxFit.cover),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8), // Border width
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: SizedBox.fromSize(
                size: Size.square(55), // Image radius
                child:
                    Image.asset('assets/images/logo2.jpg', fit: BoxFit.cover),
              ),
            ),
          ), //Settings
        ],
      ), //Top Bar Row
      const SizedBox(
        height: 20,
      ),
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Good Morning,",
              style: GoogleFonts.jost(
                  textStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w300,
                fontSize: 20,
              )),
            ),
            Text(
              "Sachin",
              style: GoogleFonts.jost(
                  textStyle: TextStyle(color: Colors.white, fontSize: 26)),
            ),
          ],
        ),
      ), //Greeting
      const SizedBox(
        height: 35,
      ),
    ]);
  }
}
//********************************************************************//

////******************** TODOSECTION ******************************************//
class toDoSectionHome extends StatefulWidget {
  const toDoSectionHome({Key? key}) : super(key: key);

  @override
  State<toDoSectionHome> createState() => _toDoSectionHomeState();
}

class _toDoSectionHomeState extends State<toDoSectionHome> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(right: 30, left: 30),
          child: Row(
            children: [
              Text(
                "To do",
                style: GoogleFonts.jost(
                    textStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                )),
              ),
              const SizedBox(
                width: 15,
              ),
              Container(
                width: 40,
                height: 35,
                decoration: BoxDecoration(
                    color: Color(0xff47B5FF),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Text(
                  "4",
                  style: GoogleFonts.jost(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontStyle: FontStyle.italic)),
                )),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          padding: EdgeInsets.only(),
          height: 160,
          width: double.infinity,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              const SizedBox(
                width: 30,
              ),
              Stack(children: [
                Container(
                  height: 135,
                  width: 170,
                  decoration: BoxDecoration(
                    color: Color(0xffDFF6FF),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 12, top: 10, right: 12, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Talk to sangeeta",
                          style: GoogleFonts.jost(
                            textStyle: TextStyle(
                                color: Color(0xff47B5FF),
                                fontSize: 24,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Due Tommorow",
                          style: GoogleFonts.jost(
                            textStyle: TextStyle(
                                color: Colors.black.withOpacity(0.7),
                                fontSize: 15,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    top: 5,
                    right: 5,
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 15,
                    )),
              ]),
              const SizedBox(
                width: 25,
              ),
              Stack(children: [
                Container(
                  height: 135,
                  width: 170,
                  decoration: BoxDecoration(
                    color: Color(0xffDFF6FF),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 12, top: 10, right: 12, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Talk to sangeeta",
                          style: GoogleFonts.jost(
                            textStyle: TextStyle(
                                color: Color(0xff47B5FF),
                                fontSize: 24,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Due Tommorow",
                          style: GoogleFonts.jost(
                            textStyle: TextStyle(
                                color: Colors.black.withOpacity(0.7),
                                fontSize: 15,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    top: 5,
                    right: 5,
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 15,
                    )),
              ]),
              const SizedBox(
                width: 25,
              ),
              Stack(children: [
                Container(
                  height: 135,
                  width: 170,
                  decoration: BoxDecoration(
                    color: Color(0xffDFF6FF),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 12, top: 10, right: 12, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Talk to sangeeta",
                          style: GoogleFonts.jost(
                            textStyle: TextStyle(
                                color: Color(0xff47B5FF),
                                fontSize: 24,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Due Tommorow",
                          style: GoogleFonts.jost(
                            textStyle: TextStyle(
                                color: Colors.black.withOpacity(0.7),
                                fontSize: 15,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    top: 5,
                    right: 5,
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 15,
                    )),
              ]),
              const SizedBox(
                width: 25,
              ),
              Stack(children: [
                Container(
                  height: 135,
                  width: 170,
                  decoration: BoxDecoration(
                    color: Color(0xffDFF6FF),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 12, top: 10, right: 12, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Talk to sangeeta",
                          style: GoogleFonts.jost(
                            textStyle: TextStyle(
                                color: Color(0xff47B5FF),
                                fontSize: 24,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Due Tommorow",
                          style: GoogleFonts.jost(
                            textStyle: TextStyle(
                                color: Colors.black.withOpacity(0.7),
                                fontSize: 15,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    top: 5,
                    right: 5,
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 15,
                    )),
              ]),
              const SizedBox(
                width: 25,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
//**************************************************************************//

//**************************COMPLETEDSECTION********************************/
class completedTaskSection extends StatefulWidget {
  const completedTaskSection({Key? key}) : super(key: key);

  @override
  State<completedTaskSection> createState() => _completedTaskSectionState();
}

class _completedTaskSectionState extends State<completedTaskSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(right: 30, left: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Completed",
                style: GoogleFonts.jost(
                    textStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                )),
              ),
              Icon(
                Icons.navigate_next_rounded,
                size: 30,
                color: Colors.white,
              )
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          padding: EdgeInsets.only(),
          height: 200,
          width: double.infinity,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              const SizedBox(
                width: 30,
              ),
              Stack(children: [
                Container(
                  height: 135,
                  width: 170,
                  decoration: BoxDecoration(
                    color: Color(0xffDFF6FF),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 12, top: 10, right: 12, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Talk to Arjun",
                          style: GoogleFonts.jost(
                            textStyle: TextStyle(
                                color: Color(0xff47B5FF),
                                fontSize: 24,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Completed",
                          style: GoogleFonts.jost(
                            textStyle: TextStyle(
                                color: Colors.black.withOpacity(0.7),
                                fontSize: 15,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
              const SizedBox(
                width: 25,
              ),
              Stack(children: [
                Container(
                  height: 135,
                  width: 170,
                  decoration: BoxDecoration(
                    color: Color(0xffDFF6FF),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 12, top: 10, right: 12, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Work on ui/ux",
                          style: GoogleFonts.jost(
                            textStyle: TextStyle(
                                color: Color(0xff47B5FF),
                                fontSize: 24,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Completed",
                          style: GoogleFonts.jost(
                            textStyle: TextStyle(
                                color: Colors.black.withOpacity(0.7),
                                fontSize: 15,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
              const SizedBox(
                width: 25,
              ),
              Stack(children: [
                Container(
                  height: 135,
                  width: 170,
                  decoration: BoxDecoration(
                    color: Color(0xffDFF6FF),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 12, top: 10, right: 12, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Talk to Arjun",
                          style: GoogleFonts.jost(
                            textStyle: TextStyle(
                                color: Color(0xff47B5FF),
                                fontSize: 24,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Completed",
                          style: GoogleFonts.jost(
                            textStyle: TextStyle(
                                color: Colors.black.withOpacity(0.7),
                                fontSize: 15,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
              const SizedBox(
                width: 25,
              ),
              Stack(children: [
                Container(
                  height: 135,
                  width: 170,
                  decoration: BoxDecoration(
                    color: Color(0xffDFF6FF),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 12, top: 10, right: 12, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Talk to Arjun",
                          style: GoogleFonts.jost(
                            textStyle: TextStyle(
                                color: Color(0xff47B5FF),
                                fontSize: 24,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Completed",
                          style: GoogleFonts.jost(
                            textStyle: TextStyle(
                                color: Colors.black.withOpacity(0.7),
                                fontSize: 15,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
              const SizedBox(
                width: 25,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

//**************************************************************************/
