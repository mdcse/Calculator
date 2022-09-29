import 'package:flutter/material.dart';
import 'package:calculator/constant.dart';

class Mybutton extends StatelessWidget {
  final String title;
  final Color buttonClr;
  final VoidCallback onpress;
  const Mybutton({
    Key? key,
    required this.title,
    this.buttonClr = whiteColor,
    required this.onpress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: InkWell(
          onTap: onpress,
          highlightColor: Colors.black,
          child: Container(
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: buttonClr,
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [whiteColor, indigiAccent]),
            ),
            child: Center(
                child: Text(
              title,
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
              ),
            )),
          ),
        ),
      ),
    );
  }
}

class DelButton extends StatelessWidget {
  const DelButton({
    Key? key,
    required this.title,
    this.buttonClr = whiteColor,
    required this.onpress,
  }) : super(key: key);

  final String title;
  final Color buttonClr;
  final VoidCallback onpress;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: InkWell(
          onTap: onpress,
          highlightColor: Colors.black,
          child: Container(
            height: 70,
            margin: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10),
              color: buttonClr,
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [whiteColor, indigiAccent]),
            ),
            child: Center(
                child: Text(
              title,
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
              ),
            )),
          ),
        ),
      ),
    );
  }
}
