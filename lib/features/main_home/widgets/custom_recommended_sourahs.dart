

import 'package:flutter/material.dart';

import 'custom_recently_sourahs_card.dart';

class CustomRecommendeSourahs extends StatelessWidget {
  const CustomRecommendeSourahs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
          height: 10,
        ),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) => const CustomReceentlySourahsCard(),
        itemCount: 10,
      ),
    );
  }
}
