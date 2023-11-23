import 'package:flutter/material.dart';

class Squarebox extends StatelessWidget {
  final String imagepath;

  const Squarebox({
    super.key,
    required this.imagepath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              imagepath,
              height: 50,
              width: 50,
            ),
          ),
        ),
      ),
    );
  }
}
