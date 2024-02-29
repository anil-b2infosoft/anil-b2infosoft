import 'package:flutter/material.dart';
import 'package:hive_database/figma/SignIn.dart';

import 'dashboard.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          SizedBox(
            height: 125,
          ),
          Row(
            children: [
              SizedBox(width: 118,),
              Container(
                height: 136,
                width: 139,
                child: Image.asset('assets/images/applogo.png',fit: BoxFit.cover,),
              ),
            ],
          ),
          SizedBox(height: 128,),
          Padding(
            padding: const EdgeInsets.only(left: 36, right: 36, top: 29),
            child: TextFormField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0XFFF7FDFF),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  hintText: "Email",
                  hintStyle: TextStyle(
                    color: Color(0XFF9B9B9B),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 36, right: 36, top: 29),
            child: TextFormField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0XFFF7FDFF),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  hintText: "Password",
                  hintStyle: TextStyle(
                    color: Color(0XFF9B9B9B),
                  )),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Not have an account?",
                style: TextStyle(color: Colors.black),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => SignIn()));
                  },
                  child: Text(
                    "Register Now",
                    style: TextStyle(color: Color(0XFF00D1FF)),
                  )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 303,
            child: ElevatedButton(
              style:
              ElevatedButton.styleFrom(backgroundColor: Color(0XFF00D1FF)),
              onPressed: () {
                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => Dashboard()));
              },
              child: Text(
                "LogIn",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
