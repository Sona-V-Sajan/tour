import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tour/view/home_tourism/homePage2.dart';

class HomeeShared extends StatefulWidget {
  const HomeeShared({super.key});

  @override
  State<HomeeShared> createState() => _HomeeSharedState();
}

class _HomeeSharedState extends State<HomeeShared> {
  late SharedPreferences preferences;
  String? name;

  @override
  void initState() {
    fetchUser();
  }

  void fetchUser() async {
    preferences = await SharedPreferences.getInstance();
    setState(() {
      name = preferences.getString("name");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("asset/img/tourism.png"))),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Welcome  $name",
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 25),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => TourismHome()));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                height: 50,
                minWidth: double.infinity,
                color: Colors.green,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Choose your Destination",
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: 800,
              height: 500,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("asset/img/bg.png"),
                  fit: BoxFit
                      .fitHeight, // This ensures the background image covers the entire Container
                ),
              ),
              child: Image(
                image: AssetImage("asset/img/bg2.png"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
