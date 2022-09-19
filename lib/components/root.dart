import 'package:calculator/components/navbutton.dart';
import 'package:flutter/material.dart';

class RootApp extends StatelessWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        appBar: AppBar(
        
          title: Center(child: const Text("Calcutator", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Container(
            child: Navbutton(
            ),
  
      ),
        ),
    ),
    );
  }
}