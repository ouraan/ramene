import 'package:flutter/material.dart';
import 'package:ramene/screens/home.dart';
import 'package:ramene/screens/landing.dart';
import 'package:ramene/shared_pref.dart';

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await SharedPref.init();
//   runApp(const MyApp());
// }

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // ThemeData themeData = ThemeData.light();

  // void setTheme(bool isDarkmode) {
  //   setState(() {
  //     themeData = (isDarkmode) ? ThemeData.dark() : ThemeData.light();
  //     SharedPref.pref?.setBool('isDarkmode', isDarkmode);
  //   });
  // }

  // @override
  // void initState() {
  //   bool isDarkmode = SharedPref.pref?.getBool('isDarkmode') ?? false;
  //   setTheme(isDarkmode);
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Landing(),
    );
  }
}
