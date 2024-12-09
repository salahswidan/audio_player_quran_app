import 'package:flutter/material.dart';
import '../../../models/soura_model.dart';
import 'custom_recently_sourahs_card.dart';

class CustomRecommendeSourahs extends StatelessWidget {
  CustomRecommendeSourahs({
    super.key,
    required this.onTap,
    required this.listSouraModel,
  });
  final  Function(int index) onTap;
  final List<SouraModel> listSouraModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
          height: 10,
        ),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) => InkWell(
            onTap: (){
              onTap(index);
            },
            child: CustomReceentlySourahsCard(
              souraModel: listSouraModel[index],
            )),
        itemCount: listSouraModel.length,
      ),
    );
  }
}
