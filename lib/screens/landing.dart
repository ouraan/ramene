import 'package:flutter/material.dart';
import 'package:ramene/constants.dart';
import 'package:ramene/screens/login.dart';
import 'package:ramene/screens/register.dart';

class Landing extends StatefulWidget {
  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            SizedBox(height: 30),
            Expanded(
              flex: 1,
              child: Column(
                children: <Widget>[
                  Image.asset("assets/images/Logo.png"),
                  SizedBox(height: 5),
                  Text("RAMENE",
                      style: TextStyle(
                        fontFamily: 'Poppins SemiBold',
                        fontSize: 16,
                        color: darkGrey,
                      )),
                  SizedBox(height: 15),
                  Image.asset("assets/images/Plate.png"),
                  SizedBox(height: 25),
                  Text("All your favorite ramen",
                      style: TextStyle(
                        fontFamily: 'Poppins Regular',
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                        color: semiBlack,
                      )),
                  SizedBox(height: 5),
                  Text(
                      "Delicious as is or toussed with your favorite ingredients",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Poppins Light',
                        fontSize: 16,
                        color: lightGrey,
                      )),
                  SizedBox(height: 25),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: <Widget>[
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: orangeAccent,
                            minimumSize: const Size.fromHeight(55),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                              builder: (context) => Login(),
                            ));
                          },
                          child: Text("SIGN IN",
                              style: TextStyle(
                                fontFamily: 'Poppins SemiBold',
                                fontSize: 18,
                              )),
                        ),
                        SizedBox(height: 15),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              elevation: 0,
                              side: BorderSide(width: 1, color: orangeAccent),
                              minimumSize: const Size.fromHeight(55),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              )),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                              builder: (context) => Register(),
                            ));
                          },
                          child: Text("SIGN UP",
                              style: TextStyle(
                                fontFamily: 'Poppins SemiBold',
                                fontSize: 18,
                                color: orangeAccent,
                              )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
