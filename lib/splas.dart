

import 'package:berger_paint_delivery_app/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
       return const LoginPage();

        
      },));

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffc670),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              child: Text ("Berger",
              style: TextStyle(color: Colors.white,
              fontSize: 60,
              fontWeight: FontWeight.bold
              ),
              ),
              ),
          ),
          Text("Paint your imagination",
              style: TextStyle(
                fontSize: 15,
                color: Colors.white
                ),
              ),
        ],
      ),
              
    );
  }
}