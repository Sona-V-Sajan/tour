import 'package:flutter/material.dart';
import 'package:tour/view/login_page/login.dart';
import 'package:tour/view/registration/registration.dart';

class Login_Tourism extends StatelessWidget {
  const Login_Tourism({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Align(
            alignment: Alignment.topCenter,
            child: Image(image: AssetImage("asset/img/tourism.png")),
          ),
          SizedBox(
            height: 40,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Login_Shared()));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[700],
                  textStyle: const TextStyle(
                      fontSize: 14, fontStyle: FontStyle.normal),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  minimumSize: const Size(150, 50)),
              child: const Text(
                "Log In",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
              height: 40,
              child: Text(
                "-or-",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: MaterialButton(
              minWidth: 160,
              height: 60,
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Register_Shared()));
              },
              color: Colors.blue,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40))),
              child: const Center(
                child: Row(
                  children: [
                    SizedBox(
                      width: 80,
                    ),
                    Text(
                      "Registration ",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.person,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: MaterialButton(
              minWidth: 160,
              height: 60,
              onPressed: () {},
              color: Colors.blueAccent,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40))),
              child: const Center(
                child: Row(
                  children: [
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      "Login With Facebook ",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.facebook,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: MaterialButton(
              minWidth: 160,
              height: 60,
              onPressed: () {},
              color: Colors.red,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40))),
              child: const Center(
                child: Row(
                  children: [
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      "Login With Google ",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.g_mobiledata_outlined,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
