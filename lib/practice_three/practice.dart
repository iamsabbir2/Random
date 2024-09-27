import 'package:flutter/material.dart';

class Practice extends StatefulWidget {
  const Practice({super.key});

  @override
  State<Practice> createState() {
    return _PracticeState();
  }
}

class _PracticeState extends State<Practice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(147, 15, 224, 88),
          title: const Text(
            'Practice Three',
            style: TextStyle(color: Color.fromARGB(175, 231, 19, 94)),
          ),
        ),
        body: DrawerHeader(
          child: Text('sdfd'),
        ));
  }
}
