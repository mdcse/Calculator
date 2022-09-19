import 'package:calculator/components/root.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:calculator/constant.dart';
import 'my_button.dart';
import 'package:calculator/evaluator.dart';

class PostFix extends StatefulWidget {
  const PostFix({Key? key}) : super(key: key);

  @override
  State<PostFix> createState() => _PostFixState();
}

class _PostFixState extends State<PostFix> {
  var userInput = '';
  var answer = '';
  @override
  Widget build(BuildContext context) {
    print('rebuild');
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          userInput.toString(),
                          style: TextStyle(fontSize: 30, color: whiteColor),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        answer.toString(),
                        style: TextStyle(fontSize: 30, color: whiteColor),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Mybutton(
                            title: 'AC',
                            onpress: () {
                              userInput = '';
                              answer = '';
                              setState(() {});
                            },
                          ),
                          Mybutton(
                            title: '=',
                            onpress: () {
                              userInput = userInput.replaceAll('x', '*');
                              Evaluate obj = new Evaluate();
                              num ans = obj.postfixEvaluation(userInput);
                              if (obj.flag == true) {
                                answer = ans.toString();
                              } else {
                                answer = "Invalid Expression";
                              }
                               setState(() {});
                              // print(ans);
                            },
                          ),
                          Mybutton(
                            title: '^',
                            onpress: () {
                              userInput += '^';
                              setState(() {});
                            },
                          ),
                          Mybutton(
                              title: '/',
                              onpress: () {
                                userInput += '/';
                                setState(() {});
                              },
                              buttonClr: greenColor),
                        ],
                      ),
                      Row(
                        children: [
                          Mybutton(
                            title: '7',
                            onpress: () {
                              userInput += '7';
                              setState(() {});
                            },
                          ),
                          Mybutton(
                            title: '8',
                            onpress: () {
                              userInput += '8';
                              setState(() {});
                            },
                          ),
                          Mybutton(
                            title: '9',
                            onpress: () {
                              userInput += '9';
                              setState(() {});
                            },
                          ),
                          Mybutton(
                              title: 'x',
                              onpress: () {
                                userInput += 'x';
                                setState(() {});
                              },
                              buttonClr: greenColor),
                        ],
                      ),
                      Row(
                        children: [
                          Mybutton(
                            title: '4',
                            onpress: () {
                              userInput += '4';
                              setState(() {});
                            },
                          ),
                          Mybutton(
                            title: '5',
                            onpress: () {
                              userInput += '5';
                              setState(() {});
                            },
                          ),
                          Mybutton(
                            title: '6',
                            onpress: () {
                              userInput += '6';
                              setState(() {});
                            },
                          ),
                          Mybutton(
                              title: '-',
                              onpress: () {
                                userInput += '-';
                                setState(() {});
                              },
                              buttonClr: greenColor),
                        ],
                      ),
                      Row(
                        children: [
                          Mybutton(
                            title: '1',
                            onpress: () {
                              userInput += '1';
                              setState(() {});
                            },
                          ),
                          Mybutton(
                            title: '2',
                            onpress: () {
                              userInput += '2';
                              setState(() {});
                            },
                          ),
                          Mybutton(
                            title: '3',
                            onpress: () {
                              userInput += '3';
                              setState(() {});
                            },
                          ),
                          Mybutton(
                              title: '+',
                              onpress: () {
                                userInput += '+';
                                setState(() {});
                              },
                              buttonClr: greenColor),
                        ],
                      ),
                      Row(
                        children: [
                          Mybutton(
                            title: '0',
                            onpress: () {
                              userInput += '0';
                              setState(() {});
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
