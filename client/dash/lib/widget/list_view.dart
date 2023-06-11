import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff242C3B),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext ctx, int index) {
          return ListTile(
            // tileColor: Colors.orange,
            title: Container(
              width: 200,
              height: 100,
              //color: Colors.white,
              decoration: BoxDecoration(
                  gradient:
                      LinearGradient(colors: [Colors.grey, Color(0x363E51)]),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(68)),
              child: Padding(
                padding: const EdgeInsets.only(left: 40, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              'Class name: R6A',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                            Text(
                              'Subject: DS',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Column(
                            children: [
                              Icon(
                                Icons.edit,
                                color: Colors.grey,
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Column(
                            children: [
                              Icon(
                                Icons.delete,
                                color: Colors.grey,
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
        },
      ),
    );
  }
}