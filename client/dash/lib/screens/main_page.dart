import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miniproject/list/list_timetable.dart';
import 'package:miniproject/screens/class_details.dart';
import 'package:miniproject/screens/classroom_details.dart';
import 'package:miniproject/screens/screen_output.dart';
import 'package:miniproject/screens/subject_details.dart';
import 'package:miniproject/screens/timetable.dart';

class ScreenHomePage extends StatelessWidget {
  const ScreenHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://t4.ftcdn.net/jpg/03/73/26/09/360_F_373260949_C49GBDmBKwzfg33ym1wMHRYK7g2cFAHI.jpg"),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 300,
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (ctx) => SubjectDetails()));
                          },
                          child: Container(
                            width: 250,
                            height: 270,
                            //color: Colors.green[200],
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoKYe9S1gbcSVV1O9XmfWVXMTcdbW4NpvE9g&usqp=CAU"))),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 300, top: 5),
                        child: Text('SUBJECT',
                            style: GoogleFonts.lexendDeca(
                              fontSize: 30,
                            )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 300,
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (ctx) => ClassRoom()));
                          },
                          child: Container(
                            width: 250,
                            height: 270,
                            //color: Colors.green[200],
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn-icons-png.flaticon.com/512/185/185578.png"))),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 300, top: 5),
                        child: Text('CLASS ROOM',
                            style: GoogleFonts.lexendDeca(
                              fontSize: 30,
                            )),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 300,
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (ctx) => TimeTable()));
                        },
                        child: Container(
                          width: 250,
                          height: 270,
                          //color: Colors.green[200],
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://static.thenounproject.com/png/2864385-200.png"))),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 300, top: 5),
                      child: Text('TIMETABLE',
                          style: GoogleFonts.lexendDeca(
                            fontSize: 30,
                          )),
                    )
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 300,
                      ),
                      child: InkWell(
                        onTap: () {
                          // Navigator.of(context).push(MaterialPageRoute(
                          //     builder: (ctx) => ScreenClassPage()));
                        },
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (ctx) => ClassDetails()));
                          },
                          child: Container(
                            width: 250,
                            height: 270,
                            //color: Colors.green[200],
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://static.thenounproject.com/png/1940579-200.png"))),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 300,
                      ),
                      child: Text('CLASS ',
                          style: GoogleFonts.lexendDeca(
                            fontSize: 30,
                          )),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, top: 130),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (ctx) => ScreenOutputPage()));
                    },
                    child: Container(
                      width: 150,
                      height: 70,
                      decoration: BoxDecoration(
                          color: Colors.green.shade100,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                          child: Text(
                        'Generate Seating',
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      )),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}