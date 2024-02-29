import 'package:flutter/material.dart';
import 'package:hive_database/figma/SignIn.dart';
import 'package:hive_database/hive_database/hive.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => SignIn()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             Image.asset('assets/images/applogo.png',
             height: 176,
             width: 161,),
             Image.asset('assets/images/appname.png',
               height: 39,
               width: 375,),

           ],
         ),
        ),
      ),
    );
  }
}
