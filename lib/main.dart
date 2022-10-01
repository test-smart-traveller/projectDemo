import 'package:flutter/material.dart';

import 'screens/ProfileG.dart';

//import './screens/loginpage.dart';
//import 'screens/requestSuccesfullPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Login Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProfileGPage(),
    );
  }
}
