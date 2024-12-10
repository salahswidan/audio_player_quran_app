import 'package:audio_player_app/models/soura_model.dart';
import 'package:flutter/material.dart';

class CustomSouraDetailsPlayScreen extends StatelessWidget {
  const CustomSouraDetailsPlayScreen({
    super.key, required this.souraModel,
  });
  final SouraModel souraModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset(
            souraModel.image,
            fit: BoxFit.cover,
            width: 261,
            height: 247,
          ),
        ),
         Text(
          souraModel.soura,
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 4,
        ),
         Text(
         souraModel.reader,
          style: TextStyle(color: Color(0xffB1AFE9), fontSize: 12),
        ),
      ],
    );
  }
}
