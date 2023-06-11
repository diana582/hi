import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarSubjectDetails extends StatelessWidget {
  AppBarSubjectDetails({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(Icons.arrow_back_ios_new_sharp),
      title: Text(
        title,
        style: GoogleFonts.poppins(
            fontWeight: FontWeight.w700, fontSize: 32, color: Colors.white),
      ),
      backgroundColor: Color(0xff242C3B),
      shadowColor: Colors.transparent,
    );
  }
}