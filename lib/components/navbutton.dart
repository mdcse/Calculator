import 'package:flutter/material.dart';

class Navbutton extends StatefulWidget {
  Navbutton({Key? key}) : super(key: key);

  @override
  State<Navbutton> createState() => _NavbuttonState();
}

class _NavbuttonState extends State<Navbutton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: 
        Column(
          children: [
            SizedBox(height: 220,),
            ElevatedButton(
              child: Text('Infix Calculator'),
              onPressed: () {
                  Navigator.pushNamed(context, "/In");
                  setState(() {
                    
                  });
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200,50),
              ),
            ),

            SizedBox(height: 20,),

            ElevatedButton(
              child: Text('Postfix Calculator'),
              onPressed: () {
                  Navigator.pushNamed(context, "/Post");
                  setState(() {
                    
                  });
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200,50),
              ),
            ),

            SizedBox(height: 20,),
            
            ElevatedButton(
              child: Text('Prefix Calculator'),
              onPressed: () {
                Navigator.pushNamed(context, "/Pre");
                  setState(() {
                    
                  });
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200,50),
              ),
            ),

          ],
        ),
    );
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
  }
}
