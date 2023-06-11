// import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miniproject/list/list_class.dart';
import 'package:miniproject/screens/class_details.dart';
// import 'package:submini/list/list_subject.dart';
import 'package:miniproject/screens/classroom_details.dart';
import 'package:miniproject/screens/main_page.dart';
// import 'package:submini/widget/app_bar_widget.dart';

// import 'package:submini/widget/list_view.dart';

class AdminLogin extends StatefulWidget {
  AdminLogin({super.key});

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  List<classList> class_list = List.empty(growable: true);

  // Future SignIn() async {
  //   await FirebaseAuth.instance.signInWithEmailAndPassword(
  //       email: usernameController.text.trim(),
  //       password: passwordController.text.trim());
  // }
  // Future addsubjectdetails(String class_name, String roll_no) async {
  //   await FirebaseFirestore.instance.collection('Class').add({
  //     'Class name': class_name,
  //     'Roll Number': roll_no,
  //   });
  // }

  @override
  // Future insert() async {
  //   await addsubjectdetails(
  //       usernameController.text.trim(), passwordController.text.trim());
  // }

  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: const Color(0xff242C3B),
        // appBar: PreferredSize(
        //   child: AppBarSubjectDetails(
        //     title: "Subject Details",
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
            width: 650,
            height: double.infinity,
            child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 250,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 140),
                    child: Text(
                      'Sign in',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 42,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 200, right: 75, top: 40),
                    child: TextField(
                      controller: usernameController,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide: BorderSide(color: Colors.pink)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide: BorderSide(color: Colors.grey)),
                          hintText: 'Username',
                          hintStyle: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black)),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 200, right: 75, top: 20),
                    child: TextField(
                      controller: usernameController,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide: BorderSide(color: Colors.pink)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide: BorderSide(color: Colors.grey)),
                        hintText: 'Password',
                        hintStyle: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      obscureText: true,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 300, top: 10),
                    child: Text(
                      'Forgot Password?',
                      style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 120, top: 30),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (ctx) => ClassDetails()));
                      },
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => ScreenHomePage()));
                        },
                        child: Container(
                          width: 340,
                          height: 55,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(7)),
                          child: Center(
                            child: Text('LOGIN',
                                style: GoogleFonts.assistant(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
        ],
      ),
    ));

    // const SizedBox(
    //   height: 40,
    // ),
    // Padding(
    //   padding: const EdgeInsets.only(left: 25),
    //  child:
    // ),
    // const SizedBox(
    //   height: 40,
    // ),
    // Padding(
    //   padding: const EdgeInsets.only(left: 75),
    //   child: Container(
    //     width: 350,
    //     decoration: BoxDecoration(
    //       borderRadius: BorderRadius.circular(20),
    //       gradient: const LinearGradient(
    //         colors: [
    //           Color.fromARGB(255, 102, 100, 100),
    //           Color(0x363E51)
    //         ],
    //       ),
    //     ),
    // child:
    // const SizedBox(
    //   height: 20,
    // ),
    // Padding(
    //   padding: const EdgeInsets.only(left: 75),
    //   child: Container(
    //     width: 350,
    //     decoration: BoxDecoration(
    //       borderRadius: BorderRadius.circular(20),
    //       gradient: const LinearGradient(
    //         colors: [
    //           Color.fromARGB(255, 102, 100, 100),
    //           Color(0x363E51)
    //         ],
    //       ),
    //     ),
    //     child: TextField(
    //       controller: passwordController,
    //       decoration: InputDecoration(
    //           enabledBorder: InputBorder.none,
    //           contentPadding: const EdgeInsets.all(12),
    //           hintText: 'Password',
    //           hintStyle: GoogleFonts.poppins(
    //               fontSize: 15,
    //               fontWeight: FontWeight.w400,
    //               color: Colors.white)),
    //     ),
    //   ),
    // ),
    // const SizedBox(
    //   height: 40,
    // ),
    // Padding(
    //   padding: const EdgeInsets.only(left: 40),
    //   child: Container(
    //     width: 150,
    //     height: 50,
    //     //color: Colors.white,
    //     decoration: const BoxDecoration(
    //       //borderRadius: BorderRadius.circular(20),
    //       gradient: LinearGradient(
    //         colors: [
    //           Color.fromARGB(255, 172, 167, 167),
    //           Color.fromARGB(0, 80, 90, 113)
    //         ],
    //       ),
    //     ),
    //     child: ElevatedButton(
    //         style: ElevatedButton.styleFrom(
    //             backgroundColor: Colors.transparent),
    //         onPressed: () {
    //           MainPage();
    //           // SignIn();
    //           Navigator.of(context).push(
    //               MaterialPageRoute(builder: (ctx) => ClassRoom()));
    //         },
    //         child: Text(
    //           'LOGIN',
    //           style: GoogleFonts.poppins(
    //               fontWeight: FontWeight.w700,
    //               fontSize: 20,
    //               color: Colors.white),
    //         )),
    //   ),
    // ),
    //   ],
    // ));
  }
}