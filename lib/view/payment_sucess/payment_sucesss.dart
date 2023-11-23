import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Sucess_Payment(),));
}
class Sucess_Payment  extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           FloatingActionButton(
             backgroundColor: Colors.green,
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(80)
             ),
             onPressed: (){},child: Icon(Icons.verified,color: Colors.white,),),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Center(
                child: Text("Payment  Successfull ",style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 25,color: Colors.green
                ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
