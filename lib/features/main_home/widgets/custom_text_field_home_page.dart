import 'package:flutter/material.dart';

class CustomTextFieldHomePage extends StatelessWidget {
  const CustomTextFieldHomePage({
    super.key,
    required this.onTap,
    this.isSearchNow = false,
    required this.onTapCloseIcon, required this.streamCloseStatus, required this.onSubmitted,
  });
  final GestureTapCallback onTap;
  final GestureTapCallback onTapCloseIcon;
  final bool isSearchNow;
  final Stream streamCloseStatus;
  final ValueChanged<String> onSubmitted;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 55, right: 31, left: 31),
      child: StreamBuilder(
        stream: streamCloseStatus,
        builder: (context, snapshot) => 
         TextField( 
          onSubmitted: onSubmitted,
          onTap: onTap,
          decoration: InputDecoration(
            suffixIcon: snapshot.data == true
                ? InkWell(
                    onTap: onTapCloseIcon,
                    child: Icon(
                      Icons.close,
                      color: Colors.black,
                    ))
                : null,
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
      ),
    );
  }
}
