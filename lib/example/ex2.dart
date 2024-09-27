import 'package:flutter/material.dart';



class Ex2  extends StatefulWidget {
  const Ex2({super.key});


  @override
  State<Ex2> createState() {
  return _Ex2State();
  }
}
class _Ex2State extends State<Ex2> {
  var counter = 0;

  void increment()
  {
    setState((){
      counter++;
    
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: const Text(
          'Example 2',
        ),
      ),
      body: Scaffold(
        body: Center(
          child: Text(
            'Count: $counter',
            style: const TextStyle(
              fontSize: 24,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: increment,
        tooltip: 'Add',
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}