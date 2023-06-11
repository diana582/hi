import 'package:flutter/material.dart';

class ScreenOutputPage extends StatelessWidget {
  final List<String> list1 = [
    for (int i = 1; i <= 23; i++) 'B20CSA$i',
  ];
  final List<String> list2 = [
    for (int i = 1; i <= 22; i++) 'B20MEA$i',
  ];

  @override
  Widget build(BuildContext context) {
    List<String> list3 = [
      for (int i = 24; i <= 45; i++) 'B20CSA$i',
    ];
    List<String> list4 = [
      for (int i = 23; i <= 45; i++) 'B20MEA$i',
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: PageView(
        children: [
          MyScreen(list1: list1, list2: list2),
          MyScreen(list1: list3, list2: list4),
        ],
      ),
    );
  }
}

class MyScreen extends StatelessWidget {
  final List<String> list1;
  final List<String> list2;

  const MyScreen({Key? key, required this.list1, required this.list2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> items = [];

    for (int i = 0; i < list1.length; i++) {
      items.add(
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              '${list1[i]}',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      );

      if (i < list2.length) {
        items.add(
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                '${list2[i]}',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        );
      }
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.count(
          crossAxisCount: 9,
          mainAxisSpacing: 20,
          childAspectRatio: 3,
          crossAxisSpacing: 10,
          children: items,
        ),
      ),
    );
  }
}