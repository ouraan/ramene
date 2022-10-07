import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ramene/constants.dart';
import 'package:ramene/screens/login.dart';
import 'package:ramene/screens/register.dart';
import 'package:ramene/shared_pref.dart';

class Landing extends StatefulWidget{
  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  void initState() {
    super.initState();
     }

  @override
  Widget build(BuildContext context){
    // // Obtain shared preferences.
    SharedPref.pref?.setString('isDarkMode', 'Ya ini seharusnya darkmode');
    

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
                  Text("RAMENE", style: TextStyle(
                    fontFamily: 'Poppins Bold',
                    fontSize: 16,
                    color: darkGrey,
                  )),
                  SizedBox(height: 15),
                  Image.asset("assets/images/Plate.png"),
                  SizedBox(height: 25),
                  Text("All your favorite ramen",
                  style: TextStyle(
                    fontFamily: 'Poppins Bold',
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                    color: semiBlack,
                  )),
                  SizedBox(height: 5),
                  Text("Delicious as is or toussed with your favorite ingredients",
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
                          onPressed: (){
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Login(),));
                          }, 
                          child: Text("SIGN IN",
                          style: TextStyle(
                            fontFamily: 'Poppins Bold',
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
                            )
                          ),
                          onPressed: (){
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Register(),));
                          }, 
                          child: Text("SIGN UP",
                          style: TextStyle(
                            fontFamily: 'Poppins Bold',
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