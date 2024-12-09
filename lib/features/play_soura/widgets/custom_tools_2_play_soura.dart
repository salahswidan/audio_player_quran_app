
import 'package:flutter/material.dart';

import '../../../core/resourses/color_managers.dart';

class CustomTools2PlaySoura extends StatelessWidget {
  const CustomTools2PlaySoura({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: 13, vertical: 11),
      decoration: ShapeDecoration(
          color:
              ColorManagers.klightWhiteColor.withOpacity(0.50),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10))),
      margin:
          EdgeInsets.symmetric(horizontal: 33, vertical: 25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Up Next",
                style: TextStyle(
                    fontSize: 8,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xff8A86F4).withOpacity(0.50),
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.symmetric(
                    vertical: 3, horizontal: 10),
                child: Text(
                  "Up Next",
                  style: TextStyle(
                      fontSize: 8,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
            ],
          ),
          ListTile(
            leading: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "assets/images/test.png",
                  width: 55,
                  height: 55,
                )),
            title: Text(
              "data",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
            subtitle: Text("data",
                style: TextStyle(
                    color: ColorManagers.klightWhiteColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w500)),
            trailing: Icon(
              Icons.skip_next,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
