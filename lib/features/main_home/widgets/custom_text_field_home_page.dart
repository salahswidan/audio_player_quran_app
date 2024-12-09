import 'package:flutter/material.dart';

class CustomTextFieldHomePage extends StatelessWidget {
  const CustomTextFieldHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 55, right: 31, left: 31),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xffB1AFE9),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 10.0),
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          hintText: "Search",
          hintStyle: TextStyle(color: Colors.white, fontSize: 15),
        ),
      ),
    );
  }
}
