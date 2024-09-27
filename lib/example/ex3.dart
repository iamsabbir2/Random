import 'package:flutter/material.dart';
import 'package:random/example/ex2.dart';
class Ex3 extends StatelessWidget {
  const Ex3({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: const Text(
          'Example 3',
        ),
      ),
      body: Center(
        child: GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Ex2(),
              ),
            );
            print('Go to Ex3 button pressed');
          },
          child: Container(
            height: 50,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(5),
            ),
            child: const Center(
              child: Text('Go to Ex2'),
            ),
          ),
        ),
      ),
    ); 
  }
}