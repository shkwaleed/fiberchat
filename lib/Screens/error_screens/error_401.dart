import 'dart:io';

import 'package:fiberchat/Configs/app_constants.dart';
import 'package:flutter/material.dart';

class Error401 extends StatefulWidget {
  const Error401({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<Error401> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                '$ErrorImage',
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.all(20),
              child: Text(
                "Account Blocked due to Security reasons!",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

 closeApp(){
   Future.delayed(const Duration(seconds: 4), () {
     exit(0);
   });

 }
