
import 'package:flutter/material.dart';

import '../../../core/resourses/color_managers.dart';

class CustomTimingWidget extends StatelessWidget {
  const CustomTimingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "2.03",
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: ColorManagers.klightWhiteColor),
        ),
        Text(
          "4.03",
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: ColorManagers.klightWhiteColor),
        ),
      ],
    );
  }
}
