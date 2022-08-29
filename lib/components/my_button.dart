import 'package:flutter/material.dart';
import 'package:calculator/constant.dart';

class Mybutton extends StatelessWidget {
  final String title;
  final Color buttonClr;
  final VoidCallback onpress;
  const Mybutton({
    Key? key,
    required this.title,
    this.buttonClr = greyColor,
    required this.onpress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: InkWell(
          onTap: onpress,
          child: Container(
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: buttonClr,
            ),
            child: Center(
                child: Text(
              title,
              style: TextStyle(fontSize: 20, color: whiteColor),
            )),
          ),
        ),
      ),
    );
  }
}
