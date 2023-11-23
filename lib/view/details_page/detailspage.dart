import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tour/view/dummy_data/dummypag.dart';
import 'package:tour/view/payment/paymnt.dart';


class PageDetails extends StatelessWidget {
  const PageDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var id = ModalRoute.of(context)?.settings.arguments;
    var tourismpage =
        tourism.firstWhere((tourismpage) => tourismpage["id"] == id);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 8, top: 30),
                        child: Text("Most Furious Place & Peaceful \nNatural look ",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(top: 10, left: 8,bottom:10),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 27,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 27,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 27,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 27,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 27,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "4.7 Rating ",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 40),
                    child: Container(
                      width: 80,
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(
                                tourismpage["image"],
                              ),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "About Places",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                tourismpage["description"],
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,


                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Special Facilities",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      FaIcon(
                        Icons.train,
                        color: Colors.cyan,
                        size:30,
                      ),
                      Text(
                        "Parking",
                        style: TextStyle(
                            color: Colors.cyan,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      FaIcon(
                        Icons.support_agent_rounded,
                        color: Colors.cyan,
                        size: 30,
                      ),
                      Text(
                        "Support",
                        style: TextStyle(
                            color: Colors.cyan,
                            fontWeight: FontWeight.normal,
                            fontSize: 14),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      FaIcon(
                        Icons.wifi,
                        color: Colors.cyan,
                        size:30,
                      ),
                      Text(
                        "Free ifi",
                        style: TextStyle(
                            color: Colors.cyan,
                            fontWeight: FontWeight.normal,
                            fontSize: 14),
                      )
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 250,
                  width: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(
                            tourismpage["image"],
                          ),
                          fit: BoxFit.cover)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Special Facilities",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 50,
                      height: 32,
                      color: const Color(0xFF9BC9CD),
                      child: const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Text(
                          "Adult \n 02",
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 50,
                      height: 32,
                      color: const Color(0xFF9BC9CD),
                      child: const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Text(
                          "Adult \n 02",
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 50,
                      height: 32,
                      color: const Color(0xFF9BC9CD),
                      child: const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Text(
                          "Adult \n 02",
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 80,
                      height: 32,
                      color: const Color(0xFF9BC9CD),
                      child: const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Text(
                          "Adult \n 02",

                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                    minWidth: 500,
                    height: 40,
                    color: Colors.blueAccent,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Payment()));
                    },
                    child: const Text(
                      "Explore",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
