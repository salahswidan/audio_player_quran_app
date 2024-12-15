
import 'package:flutter/material.dart';

import '../../../controller/home_page_controlller.dart';
import '../../../core/resourses/constants_value.dart';
import 'custom_search_details.dart';
import 'custom_title_search_home_page.dart';

class CustomSearchFeature extends StatelessWidget {
  const CustomSearchFeature({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTitleSearchHomePage(
          title: "Recently Played",
        ),
        const SizedBox(
          height: 22,
        ),
        CustomSearchDetails(
          onTap: (index) {
            HomePageControlller.naviagtorToPlaySouraScreen(
                context: context, index: index);
          },
          itemCount: 3,
          ListSouraModel: ConstantsValue.listQuarn,
        ),
      ],
    );
  }
}
