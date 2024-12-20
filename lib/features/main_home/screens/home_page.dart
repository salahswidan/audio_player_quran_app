import 'package:audio_player_app/controller/home_page_controlller.dart';
import 'package:audio_player_app/core/resourses/constants_value.dart';
import 'package:audio_player_app/features/main_home/widgets/custom_recently_sourahs_card.dart';
import 'package:audio_player_app/models/soura_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../core/resourses/color_managers.dart';
import '../widgets/custom_recommended_sourahs.dart';
import '../widgets/custom_search_details.dart';
import '../widgets/custom_search_feature.dart';
import '../widgets/custom_text_field_home_page.dart';
import '../widgets/custom_title_search_home_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomePageControlller homePageControlller;
  @override
  void initState() {
    super.initState();
    homePageControlller = HomePageControlller();
  }

  @override
  void dispose() {
    homePageControlller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment(0.20, -0.98),
              end: Alignment(-0.20, 0.98),
              colors: [
            ColorManagers.kPrimaryColor,
            ColorManagers.kDarkBlueeColor
          ])),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextFieldHomePage(
              onSubmitted: (value) {
                homePageControlller.searchAboutSong(value);
              },
              streamCloseStatus:
                  homePageControlller.closeStatusSearchOutputData,
              onTapCloseIcon: () {
                homePageControlller.onTapOutsideSearchTextField();
              },
              isSearchNow: homePageControlller.tappedOnSearchTextField,
              onTap: () {
                homePageControlller.onTapSearchTextField();
              },
            ),
            //  if (homePageControlller.tappedOnSearchTextField == true)
            StreamBuilder(
                stream: homePageControlller.tappedStatusSearchOutputData,
                builder: (context, snapshot) {
                  print(snapshot.data);
                  if (snapshot.data == null || snapshot.data == false) {
                    return SizedBox();
                  } else
                    return CustomSearchFeature(
                      listSearchOutPutData: homePageControlller.listSearchOutPutDataOutputData,

                    );
                }),
            const CustomTitleSearchHomePage(
              title: "Recommended Sourahs",
            ),
            CustomRecommendeSourahs(
              listSouraModel: ConstantsValue.listQuarn,
              onTap: (index) {
                HomePageControlller.naviagtorToPlaySouraScreen(
                    context: context, index: index);
              },
            )
          ],
        ),
      ),
    );
  }
}
