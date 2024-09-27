import 'package:flutter/material.dart';

class HandleTap extends StatelessWidget {
  const HandleTap({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        
        appBar: AppBar(
          leading:const IconButton(
            icon:  Icon(
              Icons.menu,
            ),
            onPressed: null,
          ),
          title: const Text(
            'Example Titile',
          ),
          
        ),
        body: SafeArea(
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(12),
              child: const Text(
                'Hello World!',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        floatingActionButton:const FloatingActionButton(
          onPressed: null,
          tooltip: 'Add',
          child: Icon(
            Icons.add,
          ),
          
        ),
      ),
    );
  }
}
