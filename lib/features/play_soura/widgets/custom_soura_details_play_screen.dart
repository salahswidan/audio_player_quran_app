
import 'package:flutter/material.dart';

class CustomSouraDetailsPlayScreen extends StatelessWidget {
  const CustomSouraDetailsPlayScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset(
            "assets/images/quran_image/qu3.jpg",
            fit: BoxFit.cover,
            width: 261,
            height: 247,
          ),
        ),
        const Text(
          "Al-Baqarah",
          style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 4,
        ),
        const Text(
          "Adeel",
          style:
              TextStyle(color: Color(0xffB1AFE9), fontSize: 12),
        ),
      ],
    );
  }
}
