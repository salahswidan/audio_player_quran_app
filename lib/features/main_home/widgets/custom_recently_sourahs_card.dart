import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomReceentlySourahsCard extends StatelessWidget {
  const CustomReceentlySourahsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage("assets/images/quran_image/qu3.jpg"),
        radius: 35,
      ),
      title: Text(
        "Al-Baqarah",
        style: TextStyle(
            color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),
      ),
      subtitle: Text(
        "Adeel",
        style: TextStyle(color: Color(0xffB1AFE9), fontSize: 12),
      ),
      trailing: Icon(
        CupertinoIcons.heart,
        color: Colors.white,
      ),
    );
  }
}
