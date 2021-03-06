import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rexora1/screens/terms.dart';

import 'Gender.dart';

class Gift extends StatefulWidget {
  const Gift({Key? key}) : super(key: key);

  @override
  _GiftState createState() => _GiftState();
}
enum options {Yes,  No}
class _GiftState extends State<Gift> {

  @override
  options _opt = options.Yes;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color(0xFF4A5BB6),
      ),

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
    child: Align(
    alignment: Alignment.topCenter,
    child: Padding(
    padding: EdgeInsets.fromLTRB(10, 50, 10, 10),
    child: Image.asset("assets/gift.png"),
    ),
    ),
    ),
    Expanded(flex:2,
    child: ListView(

    children: [

    Padding(padding: EdgeInsets.fromLTRB(30, 40, 30, 30),
    child: Align(
    alignment: Alignment.topLeft,
    child: Text("Are you willing to opt for physical gifts policy?",
    style:  GoogleFonts.montserrat(color: Colors.white,

    fontSize: 20,
    fontWeight: FontWeight.w400
    ),),
    ),),

      ListTile(
        title:  Text('Yes, I would love to ',style: GoogleFonts.montserrat(
        color: Colors.white,
            fontSize: 14
        ),),
        leading: Radio(
          value: options.Yes,
          groupValue: _opt,
          onChanged: null,
        ),
      ),
      ListTile(
        title:  Text('No, thanks', style: GoogleFonts.montserrat(
          color: Colors.white,
          fontSize: 14
        ),),
        leading: Radio(
          value: options.No,
          groupValue: _opt,
          onChanged:  null

        ),
      ),
      Padding(
        padding: const EdgeInsets.all(18.0),
        child: RaisedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Terms()));
          },


          //Refer step 3
          child: Text(
            'Agree and Continue',
            style:
            TextStyle(color: Color(0xFF18246D), fontWeight: FontWeight.bold),
          ),
          color: Colors.white,
        ),
      ),

    ]),)
    ],
      ),
      )
    );
  }
}
