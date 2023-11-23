// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyBotton extends StatelessWidget {
  void Function()? onTap;
   MyBotton({super.key,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(8)),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Log in",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
