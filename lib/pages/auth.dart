import 'package:auth/pages/homepage.dart';
import 'package:auth/pages/loginpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Authpage extends StatelessWidget {
   Authpage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:StreamBuilder(stream: FirebaseAuth.instance.authStateChanges(), builder:((context, snapshot) {
        if(snapshot.hasData)
        {
          return Homepage();
        }
        else
        {
          return Homepage();
        }
      }))
    );
  }
}