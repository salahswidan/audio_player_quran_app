import 'package:flutter/material.dart';

class CustomTitleSearchHomePage extends StatelessWidget {
  const CustomTitleSearchHomePage({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 34.0, top: 32),
      child: Text(
        title,
        style: TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
      ),
    );
  }
}
