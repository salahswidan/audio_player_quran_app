import 'package:flutter/material.dart';

class CustomSubTitleOnBoarding extends StatelessWidget {
  const CustomSubTitleOnBoarding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: Text(
          textAlign: TextAlign.center,
          "Find Your Latest Favourite Music From Our Collection",
          style: TextStyle(
              fontFamily: "main", fontSize: 15, color: Colors.grey[400])),
    );
  }
}
