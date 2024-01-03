import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tour/view/first_screen/first_screen.dart';

// void main(){
//   runApp(MaterialApp(home: Tourism_Splashpage(),));
// }
class Tourism_Splashpage extends StatefulWidget {
  const Tourism_Splashpage({super.key});

  @override
  State<Tourism_Splashpage> createState() => _Tourism_SplashpageState();
}

class _Tourism_SplashpageState extends State<Tourism_Splashpage> {
  @override
  void initState(){
    Timer(const Duration(seconds: 10), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const Login_Tourism()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.grey[300],
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height:300 ,
              decoration:BoxDecoration(
                image: DecorationImage(image: AssetImage("asset/img/tourism.png"))
              ),
            ),
           SizedBox(
             height: 330,
           ),
            SizedBox(child: Image(image: AssetImage("asset/animation/runcar.gif")))
          ],
        ),
      ),
    );
  }
}
