// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../components/Mybotton.dart';
import '../components/contentbox.dart';
import '../components/sqaurebox.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailcontroller = TextEditingController();
    final passwordcontroller = TextEditingController();

void signin() async
{
  await FirebaseAuth.instance.createUserWithEmailAndPassword(email: emailcontroller.text, password: passwordcontroller.text);
}

    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                //icon
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Icon(
                    Icons.lock,
                    size: 150,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //text
                Text("Welcome back You'/ve been missed"),
                SizedBox(
                  height: 10,
                ),
                //email
                ContentBox(
                  controller: emailcontroller,
                  obsecure: false,
                  hinttext: "Email/Phone..",
                  Icons: Icon(Icons.mail),
                ),

                //password
                ContentBox(
                  controller: passwordcontroller,
                  obsecure: true,
                  hinttext: "Password",
                  Icons: Icon(Icons.lock),
                ),

                //forgot password
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {}, child: Text("Forgot Password?"))
                    ],
                  ),
                ),

                //sign in
                MyBotton(onTap: signin,),

                //or continue with
                SizedBox(
                  height: 20,
                ),

                Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 1.5,
                      color: Colors.grey.shade400,
                    )),
                    Text("  or continue with "),
                    Expanded(
                        child: Divider(
                      thickness:1.5,
                      color: Colors.grey.shade400,
                    )),
                  ],
                ),

                //google+apple
                SizedBox(
                  height: 20,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Squarebox(imagepath: "lib/image/google.png"),
                    Squarebox(imagepath: "lib/image/Apple-logo.png")
                  ],
                )

                //Not a member sign in
                ,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Not a member?"),
                    TextButton(onPressed: () {}, child: Text("Register Now"))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
