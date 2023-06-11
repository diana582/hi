import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miniproject/list/list_subject.dart';
import 'package:miniproject/widget/app_bar_widget.dart';

import 'package:miniproject/widget/list_view.dart';

class SubjectDetails extends StatefulWidget {
  SubjectDetails({super.key});

  @override
  State<SubjectDetails> createState() => _SubjectDetailsState();
}

class _SubjectDetailsState extends State<SubjectDetails> {
  final classnameController = TextEditingController();

  final subjectController = TextEditingController();

  List<subjectList> subject_list = List.empty(growable: true);

  Future addsubjectdetails(String class_name, String subject) async {
    await FirebaseFirestore.instance.collection('Subject').add({
      'Class name': class_name,
      'Subject': subject,
    });
  }

  @override
  Future insert() async {
    await addsubjectdetails(
        classnameController.text.trim(), subjectController.text.trim());
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff242C3B),

      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://t4.ftcdn.net/jpg/03/73/26/09/360_F_373260949_C49GBDmBKwzfg33ym1wMHRYK7g2cFAHI.jpg"),
                fit: BoxFit.cover)),
        child: Row(children: [
          Container(
            width: 600,
            height: double.infinity,
            child: ListView(children: [
              Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 250,
                      ),
                      Text(
                        'SUBJECT DETAILS',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            fontSize: 32,
                            color: Colors.black),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 90, right: 90, top: 40),
                        child: TextField(
                          controller: classnameController,
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(7),
                                  borderSide: BorderSide(color: Colors.black)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(7),
                                  borderSide: BorderSide(color: Colors.grey)),
                              hintText: 'Enter Class name',
                              hintStyle: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black)),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 90, right: 90, top: 20),
                        child: TextField(
                          controller: subjectController,
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(7),
                                  borderSide: BorderSide(color: Colors.black)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(7),
                                  borderSide: BorderSide(color: Colors.grey)),
                              hintText: 'Enter Subject',
                              hintStyle: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    String clname =
                                        classnameController.text.trim();
                                    String sub = subjectController.text.trim();

                                    setState(() {
                                      insert();
                                      if (clname.isNotEmpty && sub.isNotEmpty) {
                                        classnameController.text = '';
                                        subjectController.text = '';
                                        subject_list.add(subjectList(
                                            Class_name: clname,
                                            Subject_name: sub));
                                      }
                                    });
                                  },
                                  child: Container(
                                    width: 130,
                                    height: 85,
                                    //color: Colors.grey,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: Colors.green[100]),
                                    child: Center(
                                        child: Text(
                                      'Save',
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20,
                                          color: Colors.black),
                                    )),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    String clname =
                                        classnameController.text.trim();
                                    String sub = subjectController.text.trim();
                                    setState(() {
                                      if (clname.isNotEmpty && sub.isNotEmpty) {
                                        classnameController.text = '';

                                        subjectController.text = '';

                                        subject_list.add(subjectList(
                                          Class_name: clname,
                                          Subject_name: sub,
                                        ));
                                      }
                                    });
                                  },
                                  child: Container(
                                    width: 130,
                                    height: 85,
                                    //color: Colors.grey,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        gradient: LinearGradient(colors: [
                                          Colors.green.shade100,
                                          Color(0x363E51)
                                        ])),
                                    child: Center(
                                        child: Text(
                                      'Edit',
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20,
                                          color: Colors.white),
                                    )),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ))
            ]),
          ),
          Container(
            width: 500,
            //color: Colors.grey,
            child: Column(
              children: [
                SizedBox(
                  height: 700,
                  child: ListView.builder(
                      itemCount: subject_list.length,
                      itemBuilder: (BuildContext ctx, int index) {
                        return ListTile(
                          // tileColor: Colors.orange,
                          title: Padding(
                            padding: const EdgeInsets.only(left: 200),
                            child: Container(
                              width: 200,
                              height: 100,
                              //color: Colors.white,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                    Colors.green.shade100,
                                    Color(0x363E51)
                                  ]),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(68)),
                              child: Column(
                                //crossAxisAlignment:
                                //CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 50, top: 15),
                                        child: Column(
                                          children: [
                                            Text(
                                              'Class name: ' +
                                                  ' ' +
                                                  subject_list[index]
                                                      .Class_name,
                                              style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white),
                                            ),
                                            Text(
                                              'Subject: ' +
                                                  ' ' +
                                                  subject_list[index]
                                                      .Subject_name,
                                              style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Spacer(),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Column(
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                setState(() {
                                                  classnameController.text =
                                                      subject_list[index]
                                                          .Class_name;
                                                  subjectController.text =
                                                      subject_list[index]
                                                          .Subject_name;
                                                });
                                              },
                                              child: Icon(
                                                Icons.edit,
                                                color: Colors.grey,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 30),
                                        child: Column(
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                setState(() {
                                                  subject_list.removeAt(index);
                                                });
                                              },
                                              child: Icon(
                                                Icons.delete,
                                                color: Colors.grey,
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
          )
        ]),
      ),
      //
      //     ],
      //   )),,
      // // body: ListView(
      //   children: [
      //     Column(
      //       children: [
      //         SizedBox(
      //           height: 40,
      //         ),
      //         Container(
      //           width: 350,
      //           decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(20),
      //             gradient: LinearGradient(
      //               colors: [
      //                 Color.fromARGB(255, 102, 100, 100),
      //                 Color(0x363E51)
      //               ],
      //             ),
      //           ),
      //           child: TextField(
      //             controller: classnameController,
      //             decoration: InputDecoration(
      //                 enabledBorder: InputBorder.none,
      //                 contentPadding: EdgeInsets.all(12),
      //                 hintText: 'Enter Class name',
      //                 hintStyle: GoogleFonts.poppins(
      //                     fontSize: 15,
      //                     fontWeight: FontWeight.w400,
      //                     color: Colors.white)),
      //           ),
      //         ),
      //         SizedBox(
      //           height: 20,
      //         ),
      //         Container(
      //           width: 350,
      //           decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(20),
      //             gradient: LinearGradient(
      //               colors: [
      //                 Color.fromARGB(255, 102, 100, 100),
      //                 Color(0x363E51)
      //               ],
      //             ),
      //           ),
      //           child: TextField(
      //             controller: subjectController,
      //             decoration: InputDecoration(
      //                 enabledBorder: InputBorder.none,
      //                 contentPadding: EdgeInsets.all(12),
      //                 hintText: 'Enter subject',
      //                 hintStyle: GoogleFonts.poppins(
      //                     fontSize: 15,
      //                     fontWeight: FontWeight.w400,
      //                     color: Colors.white)),
      //           ),
      //         ),
      //         SizedBox(
      //           height: 20,
      //         ),

      //         SizedBox(
      //           height: 40,
      //         ),
      //         SizedBox(
      //           height: 900,
      //           child:

      //         )
      //       ],
      //     )
      //   ],
      // )
    );
  }
}