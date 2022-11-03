import 'package:flutter/material.dart';
import 'package:ramene/constants.dart';

class MyDrawerHeader extends StatefulWidget {
  const MyDrawerHeader({super.key});

  @override
  State<MyDrawerHeader> createState() => _MyDrawerHeaderState();
}

class _MyDrawerHeaderState extends State<MyDrawerHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: orangeAccent,
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/images/eisa.jpg"),
              )
            ),
          ),
          Text("Xu Minghao",
            style: TextStyle(
              fontFamily: 'Poppins Regular',
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 3),
          Text("xuminghao1997@gmail.com",
            style: TextStyle(
              fontFamily: 'Poppins Regular',
              fontSize: 14,
              color: extraLightGrey,
            ),
          ),
        ],
      ),
    );
  }
}