import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import 'home.dart';


class OTP extends StatefulWidget {
  const OTP({Key? key}) : super(key: key);

  @override
  _OTPState createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Enter the otp for verification")),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFF4A5BB6), Color(0xFF18246D)])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            OtpTextField(
              numberOfFields: 5,
              borderColor: Color(0xFF512DA8),
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode){


              },

              // end onSubmit
            ),

            Padding(
              padding: const EdgeInsets.all(30.0),
              child: ElevatedButton(


                child: Text("Continue", style: GoogleFonts.montserrat(
                    color: Color(0xff171B72),
                    fontSize: 16

                ),),
                onPressed: (){

                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Home()));
                },

                style: ElevatedButton.styleFrom(
                    elevation: 2,
                    padding: EdgeInsets.all( 10.0),
                    primary: Colors.white,
                    shape: new RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2.0)
                    )
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
