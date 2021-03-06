import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rexora1/screens/signup.dart';

import 'dart:async';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                SignUp()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        alignment: Alignment.bottomCenter,
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/intro_bg.png"), fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 30.0),
          child: TextButton(
            child: Text("The dream relationship you always wanted!",
                style: GoogleFonts.montserrat(color: Colors.white)),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SignUp()));
            },
          ),
        ),
      ),
    );
  }
}

