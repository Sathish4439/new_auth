// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables, non_constant_identifier_names, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class ContentBox extends StatelessWidget {
  final String hinttext;
  final controller;
  final bool obsecure;
  final Icon Icons;
  ContentBox(
      {super.key,
      required this.Icons,
      required this.controller,
      required this.hinttext,
      required this.obsecure});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        obscureText: obsecure,
        controller: controller,
        decoration: InputDecoration(
            prefixIcon: Icons,
            prefixIconColor: Colors.black,
            hintText: hinttext,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(8)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.white))),
      ),
    );
  }
}
