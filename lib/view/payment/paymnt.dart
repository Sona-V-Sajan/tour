import 'package:flutter/material.dart';
import 'package:tour/view/payment_sucess/payment_sucesss.dart';



class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  String? payment;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Payments",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height:300,
              width: 400,
              decoration:BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                image: DecorationImage(
                    image: AssetImage("asset/img/place2.jpg",),
                fit: BoxFit.cover)

              )

            ),
            Card(
              child: ListTile(
                title: Text("All other options",style: TextStyle(
                  fontSize: 20
                ),),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               RadioListTile(
                 title: Text("UPI"),
                  subtitle: Text("Pay by any UPL app"), 
                   value: "upi",
                   groupValue: payment,
                   onChanged: (value){
                   setState(() {
                     payment = value.toString();
                   });},
                   ),
                RadioListTile(
                  title: Text("Wallet /Postpaid"),
                  value: "wallet",
                  groupValue: payment,
                  onChanged: (value){
                    setState(() {
                      payment = value.toString();
                    });},
                ),
                RadioListTile(
                  title: Text("Credit / Debit/ ATM card"),
                  subtitle:Text("Add and eur your card as per RBI guidelines"),
                  value: "Card",
                  groupValue: payment,
                  onChanged: (value){
                    setState(() {
                      payment = value.toString();
                    });},
                ),
                RadioListTile(
                  title: Text("Net Banking"),
                  subtitle:Text("This  instrument has low success,use UPI or \n cards for better experience"),
                  value: "net banking",
                  groupValue: payment,
                  onChanged: (value){
                    setState(() {
                      payment = value.toString();
                    });},
                ),
                RadioListTile(
                  title: Text("Pay @ Hotel"),
                  value: "pay @ hotel",
                  groupValue: payment,
                  onChanged: (value){
                    setState(() {
                      payment = value.toString();
                    });},
                ),
                ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Sucess_Payment()));
                  },
                  style:ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder()),
                    backgroundColor:MaterialStatePropertyAll(Colors.green,)
                  ),
                  child: Text("Proceed",style: TextStyle(color: Colors.white),),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
