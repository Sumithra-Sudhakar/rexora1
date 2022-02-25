import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:rexora1/screens/home.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Dating App',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

