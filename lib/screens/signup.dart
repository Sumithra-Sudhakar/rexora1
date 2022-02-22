import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rexora1/screens/phone.dart';
import 'package:rexora1/screens/signin.dart';

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
                child: Image.asset("assets/sign_up.png", fit: BoxFit.fill
                  ,))
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

child: ElevatedButton.icon(

icon: Icon(Icons.phone, size: 24,color: Color(0xff171B72),),
  label: Text("Sign Up with phone", style: GoogleFonts.montserrat(
    color: Color(0xff171B72),
    fontSize: 16

  ),),
  onPressed: (){
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const Phone()));
  },

style: ElevatedButton.styleFrom(
  elevation: 2,
  padding: EdgeInsets.all( 10.0),
  primary: Colors.white,
  shape: new RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20.0)
  )
),

),),

    Padding(padding: EdgeInsets.fromLTRB(20, 20, 20, 20),

      child: ElevatedButton.icon(

        icon: Icon(Icons.facebook, size: 24,color: Color(0xff171B72),),
        label: Text("Sign Up with Facebook", style: GoogleFonts.montserrat(
            color: Color(0xff171B72),
            fontSize: 16

        ),),
        onPressed: (){},

        style: ElevatedButton.styleFrom(
            elevation: 2,
            padding: EdgeInsets.all( 10.0),
            primary: Colors.white,
            shape: new RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)
            )
        ),

      ),),

    Padding(padding: EdgeInsets.fromLTRB(20, 20, 20, 20),

      child: ElevatedButton.icon(

        icon: Icon(Icons.mail_outline, size: 24,color: Color(0xff171B72),),
        label: Text("Sign Up with Google", style: GoogleFonts.montserrat(
            color: Color(0xff171B72),
            fontSize: 16

        ),),
        onPressed: (){},

        style: ElevatedButton.styleFrom(
            elevation: 2,
            padding: EdgeInsets.all( 10.0),
            primary: Colors.white,
            shape: new RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)
            )
        ),

      ),),
    Padding(
      padding: EdgeInsets.all(20.0),
      child: TextButton(
        onPressed: (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SignIn()));
        },
        child: Text("Already have an account? Sign in ", style: GoogleFonts.montserrat(
          fontSize: 16,
          color: Colors.white,

        ),),
      ),
    )
    

  ],
))
          ],
        ),
      ),
    );
  }
}
