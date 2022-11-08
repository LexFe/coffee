import 'dart:math';

import 'package:coffeeshop/mainhome/mainhome.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class HomeLogin extends StatelessWidget {
  const HomeLogin({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController userName = TextEditingController();
    TextEditingController userPass = TextEditingController();
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    bool _obscureText = true;

    String _password;

    return SingleChildScrollView(
      child: Container(
        height: height,
        width: width,
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            Text(
              'Welcome Back!!!',
              style: GoogleFonts.raleway(
                textStyle: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    letterSpacing: .5,
                    fontSize: 30),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Please login your account',
              style: GoogleFonts.raleway(
                textStyle: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    letterSpacing: .3,
                    fontSize: 18),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25), color: Colors.white),
              height: 50,
              width: width * 0.8,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.email_outlined),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 250,
                    child: TextFormField(
                      controller: userName,
                      decoration: InputDecoration.collapsed(
                        hintText: "Email",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25), color: Colors.white),
              height: 50,
              width: width * 0.8,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.key_outlined),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 250,
                    child: TextFormField(
                      obscureText: true,
                      controller: userPass,
                      decoration: InputDecoration.collapsed(
                        hintText: "Password",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Container(
              width: width * 0.8,
              child: FloatingActionButton.extended(
                label: Text(
                  'Login',
                  style: TextStyle(color: Colors.black),
                ), // <-- Text
                backgroundColor: Colors.white,
                // icon: Icon(
                //   // <-- Icon
                //   Icons.download,
                //   size: 24.0,
                // ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MainHomes()),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: width * 0.45),
              child: Text(
                'Forgot Password?',
                style: GoogleFonts.raleway(
                  textStyle: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      letterSpacing: .3,
                      fontSize: 12),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.only(left: 45, right: 45),
              child: Row(children: <Widget>[
                Expanded(
                  child: Divider(color: Colors.white),
                ),
                Text(
                  "OR",
                  style: TextStyle(color: Colors.white),
                ),
                Expanded(
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  child: Container(
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: Colors.white),
                    height: 50,
                    child: Icon(Icons.facebook_outlined, size: 30),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                InkWell(
                  child: Container(
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: Colors.white),
                    height: 50,
                    child: Center(child: FaIcon(FontAwesomeIcons.google)),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                InkWell(
                  child: Container(
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: Colors.white),
                    height: 50,
                    child: Center(child: FaIcon(FontAwesomeIcons.instagram)),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                InkWell(
                  child: Container(
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: Colors.white),
                    height: 50,
                    child: Center(child: FaIcon(FontAwesomeIcons.tiktok)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
