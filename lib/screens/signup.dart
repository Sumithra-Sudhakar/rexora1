import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF4A5BB6),
              Color(0xFF18246D)
            ]
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
                child: Image.asset("assets/sign_up.png"))
,Expanded(
        flex:2,
                child: ListView(

  children: [
    Align(
      alignment: Alignment.topCenter,
      child: Text("Sign Up",
      style:  GoogleFonts.montserrat(color: Colors.white,
        fontSize: 48,
        fontWeight: FontWeight.w400
          ),),
    ),
Padding(padding: EdgeInsets.fromLTRB(20, 90, 20, 20),

child: ElevatedButton(

  onPressed: (){},
  child:

  ),
),)
    

  ],
))
          ],
        ),
      ),
    );
  }
}
