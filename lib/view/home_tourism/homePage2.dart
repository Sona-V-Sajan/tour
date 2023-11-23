import 'package:flutter/material.dart';
import 'package:tour/view/dummy_data/dummypag.dart';

// void main() {
//   runApp(MaterialApp(
//     home:  TourismHome(),
//     routes: {
//       "details": (context) =>  PageDetails(),
//     },
//   ));
// }

class TourismHome extends StatelessWidget {
  const TourismHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 50),
          child: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: "Go",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "Fast",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        actions: const [
          CircleAvatar(
            minRadius: 10,
            maxRadius: 25,
            backgroundColor: Colors.blue,
          )
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFEDEDED),
                        offset: Offset(5.0, 5.0),
                        blurRadius: 10.0,
                        spreadRadius: 5.0,
                      ),
                    ],
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search",
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Text(
                        "Popular Place ",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 130,
                      ),
                      Text(
                        "View All",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 290,
              ),
              children: tourism
                  .map((e) => InkWell(
                        onTap: () => Navigator.pushNamed(context, "details",
                            arguments: e["id"]),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Stack(children: [
                              Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(e["image"]),
                                        fit: BoxFit.cover)),
                              ),
                              Positioned(
                                  top: 5,
                                  left: 10,
                                  child: ElevatedButton(
                                      style: ButtonStyle(
                                          shape: MaterialStatePropertyAll(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20))),
                                          backgroundColor:
                                              MaterialStatePropertyAll(
                                            Colors.blue,
                                          )),
                                      onPressed: () {},
                                      child: const Text(
                                        "7051",
                                        style: TextStyle(color: Colors.white),
                                      ))),
                              Positioned(
                                bottom: 30,
                                left: 10,
                                child: Text(
                                  e["text"],
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                            ]),
                          ),
                        ),
                      ))
                  .toList(),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(bottom: 5, right: 10, left: 10, top: 20),
            child: MaterialButton(
              minWidth: 500,
              height: 50,
              onPressed: () {},
              color: const Color(0xFF27285C),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4))),
              child: const Text(
                "Explore",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
