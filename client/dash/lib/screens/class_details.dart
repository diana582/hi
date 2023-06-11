import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miniproject/list/list_class.dart';
import 'package:miniproject/list/list_subject.dart';
import 'package:miniproject/widget/app_bar_widget.dart';

import 'package:miniproject/widget/list_view.dart';

class ClassDetails extends StatefulWidget {
  ClassDetails({super.key});

  @override
  State<ClassDetails> createState() => _ClassDetailsState();
}

class _ClassDetailsState extends State<ClassDetails> {
  final classnameController = TextEditingController();

  final rollnumberController = TextEditingController();

  List<classList> class_list = List.empty(growable: true);

  Future addsubjectdetails(String class_name, String roll_no) async {
    await FirebaseFirestore.instance.collection('Class').add({
      'Class name': class_name,
      'Roll Number': roll_no,
    });
  }

//List of document ids
  List<String> docIds = [];
  //method to get doc id

  // Future getDocId() async {
  //   await FirebaseFirestore.instance.collection('Class').get().then(
  //         (snapshot) => snapshot.docs.forEach((document) {
  //           print(document.reference);
  //           docIds.add(document.reference.id);
  //         }),
  //       );
  // }

  @override
  // void initState() {
  //   getDocId();
  //   super.initState();
  // }

  @override
  Future insert() async {
    await addsubjectdetails(
        classnameController.text.trim(), rollnumberController.text.trim());
  }

  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xff242C3B),
      // appBar: PreferredSize(
      //   child: AppBarSubjectDetails(
      //     title: "Class Details",
      //   ),
      //   preferredSize: Size.fromHeight(40),
      // ),
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://t4.ftcdn.net/jpg/03/73/26/09/360_F_373260949_C49GBDmBKwzfg33ym1wMHRYK7g2cFAHI.jpg"),
                  fit: BoxFit.cover)),
          child: Row(
            children: [
              Container(
                width: 600,
                height: double.infinity,
                child: ListView(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Column(children: [
                      SizedBox(
                        height: 250,
                      ),
                      Text(
                        'CLASS DETAILS',
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
                          controller: rollnumberController,
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(7),
                                  borderSide: BorderSide(color: Colors.black)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(7),
                                  borderSide: BorderSide(color: Colors.grey)),
                              hintText: 'Enter Roll Number',
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
                                    String roll =
                                        rollnumberController.text.trim();
                                    insert();
                                    setState(() {
                                      if (clname.isNotEmpty &&
                                          roll.isNotEmpty) {
                                        classnameController.text = '';
                                        rollnumberController.text = '';
                                        class_list.add(classList(
                                            Class_name: clname, Roll_no: roll));
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
                                    String roll =
                                        rollnumberController.text.trim();

                                    setState(() {
                                      if (clname.isNotEmpty &&
                                          roll.isNotEmpty) {
                                        classnameController.text = '';
                                        rollnumberController.text = '';

                                        class_list.add(classList(
                                          Class_name: clname,
                                          Roll_no: roll,
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
                      ),
                    ]),
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 200),
                child: Container(
                  width: 500,
                  //color: Colors.grey,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 800,
                        child: ListView.builder(
                            //scrollDirection: Axis.vertical,
                            itemCount: class_list.length,
                            itemBuilder: (BuildContext ctx, int index) {
                              return ListTile(
                                  // tileColor: Colors.orange,
                                  title: Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(68),
                                        gradient: LinearGradient(colors: [
                                          Colors.green.shade100,
                                          Color(0x363E51)
                                        ]),
                                      ),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 20),
                                              child: Row(children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 50),
                                                  child: Column(
                                                    children: [
                                                      Text(
                                                        'Class name: ' +
                                                            ' ' +
                                                            class_list[index]
                                                                .Class_name,
                                                        style:
                                                            GoogleFonts.poppins(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                color: Colors
                                                                    .white),
                                                      ),
                                                      Column(
                                                        children: [
                                                          Text(
                                                            'Roll Number: ' +
                                                                ' ' +
                                                                class_list[
                                                                        index]
                                                                    .Roll_no,
                                                            style: GoogleFonts
                                                                .poppins(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700,
                                                                    color: Colors
                                                                        .white),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Spacer(),
                                                InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      classnameController.text =
                                                          class_list[index]
                                                              .Class_name;
                                                      rollnumberController
                                                              .text =
                                                          class_list[index]
                                                              .Roll_no;
                                                    });
                                                  },
                                                  child: Icon(
                                                    Icons.edit,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 30),
                                                    child: Column(children: [
                                                      InkWell(
                                                        onTap: () {
                                                          setState(() {
                                                            class_list.removeAt(
                                                                index);
                                                          });
                                                        },
                                                        child: Icon(
                                                          Icons.delete,
                                                          color: Colors.grey,
                                                        ),
                                                      )
                                                    ]))
                                              ]),
                                            )
                                          ])));
                            }),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}