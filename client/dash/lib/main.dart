import 'package:flutter/material.dart';
import 'package:miniproject/screens/admin_login.dart';
import 'package:miniproject/screens/class_details.dart';
import 'package:miniproject/screens/classroom_details.dart';
import 'package:miniproject/screens/main_page.dart';
import 'package:miniproject/screens/screen_output.dart';

import 'package:miniproject/screens/subject_details.dart';
import 'package:miniproject/screens/timetable.dart';
import 'package:miniproject/widget/list_view.dart';
import 'package:firebase_core/firebase_core.dart';


void main(List<String> args)  {
 // await Firebase.initializeApp(
    //options: DefaultFirebaseOptions.currentPlatform,
  //);
  runApp(hari());
}

class hari extends StatelessWidget {
  const hari({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: AdminLogin(),
    );
  }
}