
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/resourses/color_managers.dart';

class CustomToolsPlaySoura extends StatelessWidget {
  const CustomToolsPlaySoura({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(7),
      decoration: ShapeDecoration(
          color: ColorManagers.klightWhiteColor.withOpacity(0.50),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10))),
      margin: const EdgeInsets.symmetric(horizontal: 89, vertical: 7),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Icon(
                CupertinoIcons.heart,
                size: 24,
                color: Colors.white,
              ),
              Text(
                "Likes",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 8,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Column(
            children: [
              Icon(
                CupertinoIcons.heart,
                size: 24,
                color: Colors.white,
              ),
              Text(
                "Likes",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 8,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Column(
            children: [
              Icon(
                CupertinoIcons.heart,
                size: 24,
                color: Colors.white,
              ),
              Text(
                "Likes",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 8,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Column(
            children: [
              Icon(
                CupertinoIcons.heart,
                size: 24,
                color: Colors.white,
              ),
              Text(
                "Likes",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 8,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
