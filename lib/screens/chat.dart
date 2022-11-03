import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ramene/constants.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("CHAT",
          style: TextStyle(
            fontFamily: "Poppins Regular",
            color: darkGrey,
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}