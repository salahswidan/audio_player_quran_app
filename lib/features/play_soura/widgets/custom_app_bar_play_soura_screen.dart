
import 'package:flutter/material.dart';

class CustomAppBarPlaySouraScreen extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppBarPlaySouraScreen({
    super.key, required this.onPressed,
  });
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: IconButton(onPressed: onPressed, icon:  const Icon(
        Icons.arrow_left,
        color: Colors.white,
        size: 30,
      ),),
      title: const Text(
        "Now playing",
        style: TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
      ),
      actions: [
        const Icon(
          Icons.share,
          color: Colors.white,
          size: 20,
        ),
        const SizedBox(
          width: 22,
        ),
        const Icon(
          Icons.more_vert_rounded,
          color: Colors.white,
          size: 20,
        ),
        const SizedBox(
          width: 13,
        ),
      ],
      backgroundColor: Colors.transparent,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
