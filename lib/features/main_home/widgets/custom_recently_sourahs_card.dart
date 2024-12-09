import 'package:audio_player_app/models/soura_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomReceentlySourahsCard extends StatelessWidget {
  const CustomReceentlySourahsCard({
    super.key, required this.souraModel,
  });
  final SouraModel souraModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(souraModel.image),
        radius: 35,
      ),
      title: Text(
       souraModel.soura,
        style: TextStyle(
            color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),
      ),
      subtitle: Text(
       souraModel.reader,
        style: TextStyle(color: Color(0xffB1AFE9), fontSize: 12),
      ),
      trailing: Icon(
        CupertinoIcons.heart,
        color: Colors.white,
      ),
    );
  }
}
