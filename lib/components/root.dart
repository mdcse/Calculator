import 'package:calculator/components/navbutton.dart';
import 'package:calculator/constant.dart';
import 'package:flutter/material.dart';

class RootApp extends StatelessWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          toolbarHeight: 80,
          title: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                "Expression Evaluator",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
              ),
            ),
          ),
          backgroundColor: Colors.indigoAccent,
        ),
        body: Center(
          child: AnimatedContainer(
            duration: Duration(seconds: 4),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Navbutton(
                title: 'Infix Evaluator',
                onpress: () {
                  Navigator.pushNamed(context, "/In");
                },
              ),
              Navbutton(
                title: 'Pstfix Evaluator',
                onpress: () {
                  Navigator.pushNamed(context, "/Post");
                },
              ),
              Navbutton(
                title: 'Prefix Evaluator',
                onpress: () {
                  Navigator.pushNamed(context, "/Pre");
                },
              )
            ]),
          ),
        ),
      ),
    );
  }
}
