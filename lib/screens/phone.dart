import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rexora1/screens/otp.dart';

class Phone extends StatelessWidget {
  const Phone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Enter your Phone number"),
      ),
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

            Expanded(

                child:Padding(
                  padding: EdgeInsets.all(10.0),
                  child:  Image.asset("assets/phone.png"),
                )
            ),
            Expanded(
              child: Padding(padding: EdgeInsets.fromLTRB(10, 40, 10, 10),
              child: ListView(
                children: [TextFormField(
                  style: GoogleFonts.montserrat(color: Colors.white),
                  decoration: InputDecoration(

                      filled: true,
                      fillColor: Color(0xff424894),
                      hintText: "Enter your phone number",
                      hintStyle: GoogleFonts.poppins(
                        color: Colors.white.withOpacity(0.7),

                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(5.0),

                      )
                  ),
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
                            MaterialPageRoute(builder: (context) => const OTP()));
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
                ]
              ),),
            ),



          ],
        ),      ),
    );
  }
}

