import 'package:flutter/material.dart';
import 'package:tour/view/details_page/detailspage.dart';
import 'package:tour/view/splashpage_tour/splashpage_tour.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Tourism_Splashpage(),
      routes: {
        "details": (context) =>  PageDetails(),
      },
    );
  }
}
