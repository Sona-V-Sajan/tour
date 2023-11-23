import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tour/view/login_page/login.dart';



class Register_Shared extends StatefulWidget {
  const Register_Shared({super.key});

  @override
  State<Register_Shared> createState() => _Register_SharedState();
}

class _Register_SharedState extends State<Register_Shared> {
  final name = TextEditingController();
  final uname = TextEditingController();
  final pwd = TextEditingController();
  final cpass = TextEditingController();
  bool passwordhidden = true;
  late SharedPreferences preferences;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0, bottom: 8),
              child: Image(
                image: AssetImage("asset/img/tourism.png"),
                width: double.infinity,
              ),
            ),
            Center(
              child: Text(
                "Welcome to Maldives ",
                style: GoogleFonts.roboto(
                    fontSize: 20, color: Colors.blue),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: name,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "Enter Name",
                  hintStyle: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "Enter Email",
                  hintStyle: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: pwd,
                obscuringCharacter: "*",
                obscureText: passwordhidden,
                validator: (password) {
                  if (password!.isEmpty || password.length < 6 || password != pwd.text) {
                    return 'Password must not be empty / Password length must be > 6 / Passwords do not match';
                  } else {
                    return null;
                  }
                },

                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Password",
                    hintStyle: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (passwordhidden == true) {
                              passwordhidden = false;
                            } else {
                              passwordhidden = true;
                            }
                          });
                        },
                        icon: Icon(passwordhidden == true
                            ? Icons.visibility_off_sharp
                            : Icons.visibility))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: cpass,
                obscuringCharacter: "*",
                obscureText: passwordhidden,
                validator: (cpassword) {
                  if (cpassword!.isEmpty || cpassword != cpass) {
                    return 'Password must not be empty/ password length must be > 6';
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Confirm Password",
                    hintStyle: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (passwordhidden == true) {
                              passwordhidden = false;
                            } else {
                              passwordhidden = true;
                            }
                          });
                        },
                        icon: Icon(passwordhidden == true
                            ? Icons.visibility_off_sharp
                            : Icons.visibility))),
              ),
            ),
            SizedBox(
              height:10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () => storedata(),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                height: 50,
                minWidth: double.infinity,
                color: Colors.green,
                child: Text(
                  "Register",
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void storedata() async {
    String personname = name.text;
    String username = uname.text;
    String password = pwd.text;

    preferences = await SharedPreferences.getInstance();
    preferences.setString('name', personname);
    preferences.setString('uname', username);
    preferences.setString('pass', password);

    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => Login_Shared()));
  }
}