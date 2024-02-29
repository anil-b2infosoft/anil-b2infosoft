import 'package:flutter/material.dart';
import 'package:hive_database/figma/LogIn.dart';
import 'package:hive_database/figma/dashboard.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController confpassController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(
                height: 101,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 134,
                  ),
                  Container(
                    child: Image.asset(
                      'assets/images/applogo.png',
                      height: 97,
                      width: 107,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 33,
              ),
              Container(
                  height: 52,
                  width: 224,
                  child: Text(
                    "welcome!",
                    style: TextStyle(
                        fontSize: 40,
                        letterSpacing: 5),
                  )),
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 36, right: 36),
                child: TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0XFFF7FDFF),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      hintText: "Username",
                      hintStyle: TextStyle(
                        color: Color(0XFF9B9B9B),
                      )),
                  validator: (value){
                    if(value!.isEmpty){
                     return "please enter username";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 36, right: 36, top: 29),
                child: TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0XFFF7FDFF),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      hintText: "Email",
                      hintStyle: TextStyle(
                        color: Color(0XFF9B9B9B),
                      )),
                  validator: (value){
                    if(value!.isEmpty){
                      return "please enter Email";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 36, right: 36, top: 29),
                child: TextFormField(
                  controller: passController,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0XFFF7FDFF),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      hintText: "Password",
                      hintStyle: TextStyle(
                        color: Color(0XFF9B9B9B),
                      )),
                  validator: (value){
                    if(value!.isEmpty){
                      return "please enter password";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 36, right: 36, top: 29),
                child: TextFormField(
                  controller: confpassController,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0XFFF7FDFF),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Color(0XFFCDCDCD)),
                      ),
                      hintText: "Conform Password",
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
                    "Aleready have an aaccount?",
                    style: TextStyle(color: Colors.black),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => LogIn()));
                      },
                      child: Text(
                        "Log In Now",
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
                    if(formKey.currentState!.validate()){
                      Navigator
                          .pushReplacement(context,MaterialPageRoute(builder: (context) => Dashboard()));
                    }
                  },
                  child: Text(
                    "SignIn",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
