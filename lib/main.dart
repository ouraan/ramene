import 'package:flutter/material.dart';
import 'package:ramene/screens/landing.dart';
import 'package:ramene/shared_pref.dart';

Future<void> main() async{
  runApp(MyApp());
  await SharedPref.init();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Landing(),
    );
  }
}
