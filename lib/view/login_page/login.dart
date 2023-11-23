import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tour/view/registration/registration.dart';
import 'package:tour/view/welcome/welcome.dart';

class Login_Shared extends StatefulWidget {
  const Login_Shared({super.key});

  @override
  State<Login_Shared> createState() => _Login_SharedState();
}

class _Login_SharedState extends State<Login_Shared> {
  final username = TextEditingController();
  final password = TextEditingController();
  late SharedPreferences preferences;
  late bool newuser;

  @override
  void initState() {
    check_if_user_already_login();
    super.initState();
  }

  void check_if_user_already_login() async {
    preferences = await SharedPreferences.getInstance();
    // //?? - if the condition is null fetch the second value
    //     //check whether the user is already logged in, if getBool('userlogin') is null
    //     // which means user is new
    newuser = preferences.getBool("newuser") ?? true;
    if (newuser == false) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomeeShared()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Center(
              child: Image(
                height: 290,
                image: AssetImage("asset/img/tourism.png"),
                width: double.infinity,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: username,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    hintText: "Enter Email",
                    hintStyle: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscuringCharacter: "*",
                controller: password,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  hintText: "Password",
                  hintStyle: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () => validateandLogin(),
                // Navigator.push(
                //     context, MaterialPageRoute(builder: (context) => const HomeeShared()));

                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                height: 50,
                minWidth: double.infinity,
                color: Colors.green,
                child: Text(
                  "Login",
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
              ),
            ),
            Text(
              "I don't have an account?",
              style: GoogleFonts.roboto(
                fontSize: 18,
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Register_Shared(),
                      ));
                },
                child: Text("Register",
                    style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent)))
          ],
        ),
      ),
    );
  }

  void validateandLogin() async {
    preferences = await SharedPreferences.getInstance();
    String storedusername =
        preferences.getString("uname")!; //uname is a key of registration
    String storedpassword = preferences.getString("pass")!;

    String usrname = username.text.trim();
    String pwd = password.text.trim();
    preferences.setBool("newuser", false);
    if (storedusername == usrname && storedpassword == pwd) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const HomeeShared()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Invalid username or password")));
    }
  }
}
