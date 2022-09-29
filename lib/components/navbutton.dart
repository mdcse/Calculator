import 'package:flutter/material.dart';
import 'package:calculator/constant.dart';

class Navbutton extends StatelessWidget {
  final String title;
  final Color buttonClr;
  final VoidCallback onpress;
  const Navbutton({
    Key? key,
    required this.title,
    this.buttonClr = whiteColor,
    required this.onpress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: onpress,
        highlightColor: Colors.black,
        child: Container(
          height: 80,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: buttonClr,
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [whiteColor, indigiAccent,]),
          ),
          child: Center(
              child: Text(
            title,
            style: TextStyle(fontSize: 25, color: Colors.black),
          )),
        ),
      ),
    );
  }
}

// return Material(
//   color: Colors.teal,
//   child: InkWell(
//     // onTap: () => moveToHome(context),
//     child: Container(
//       decoration: BoxDecoration(

//       ),
//               child: Text(
//         "Login",
//         style: TextStyle(
//             color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
//       ),
//     ),
//   ),
// );
