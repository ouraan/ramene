import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ramene/constants.dart';
import 'package:ramene/screens/login.dart';

class Register extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 23),
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Text("Get Your Ramen",
                style: TextStyle(
                  color: semiBlack,
                  fontFamily: 'Poppins SemiBold',
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
            SizedBox(height: 3),
            Align(
              alignment: Alignment.centerLeft,
              child: Text("Create your new account",
                style: TextStyle(
                  color: lightGrey,
                  fontSize: 17,
                  fontFamily: 'Poppins Light',
                ),
              ),
            ),
            SizedBox(height: 25),
            TextField(
              controller: null,
              style: TextStyle(
                fontFamily: 'Poppins Light',
                fontSize: 16,
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: "Email Address",
                hintText: "Email Address",
                contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                hintStyle: TextStyle(
                  fontFamily: 'Poppins Light',
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 18),
            TextField(
              controller: null,
              style: TextStyle(
                fontFamily: 'Poppins Light',
                fontSize: 16,
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: "Password",
                hintText: "Password",
                contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                hintStyle: TextStyle(
                  fontFamily: 'Poppins Light',
                  fontSize: 16,
                ),
              ),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login(),));
              }, 
              child: Text("SIGN UP",
                style: TextStyle(
                fontFamily: 'Poppins SemiBold',
                fontSize: 18,
                )),
              style: ElevatedButton.styleFrom(
                primary: orangeAccent,
                minimumSize: const Size.fromHeight(55),
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              )),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?",
                  style: TextStyle(
                  fontFamily: 'Poppins Light',
                  fontSize: 16,
                  color: lightGrey,
                )),
                SizedBox(width: 7),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Login(),));
                  },
                  child: Text("Sign in",
                    style: TextStyle(
                    fontFamily: 'Poppins Light',
                    fontSize: 16,
                    color: orangeAccent,
                  )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}