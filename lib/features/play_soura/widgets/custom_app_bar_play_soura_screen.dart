
import 'package:flutter/material.dart';

class CustomAppBarPlaySouraScreen extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppBarPlaySouraScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: Icon(
        Icons.arrow_left,
        color: Colors.white,
        size: 30,
      ),
      title: Text(
        "Now playing",
        style: TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
      ),
      actions: [
        Icon(
          Icons.share,
          color: Colors.white,
          size: 20,
        ),
        SizedBox(
          width: 22,
        ),
        Icon(
          Icons.more_vert_rounded,
          color: Colors.white,
          size: 20,
        ),
        SizedBox(
          width: 13,
        ),
      ],
      backgroundColor: Colors.transparent,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
