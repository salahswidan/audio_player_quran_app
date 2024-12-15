import 'package:audio_player_app/models/soura_model.dart';
import 'package:flutter/material.dart';
import '../../../controller/home_page_controlller.dart';
import '../../../core/resourses/constants_value.dart';
import 'custom_search_details.dart';
import 'custom_title_search_home_page.dart';

class CustomSearchFeature extends StatelessWidget {
  const CustomSearchFeature({
    super.key,
     required this.listSearchOutPutData,
  });

  final Stream<List<SouraModel>> listSearchOutPutData;
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
        StreamBuilder(
          stream: listSearchOutPutData,
          builder: (context, snapshot) =>  snapshot.data == null|| snapshot.data!.length == 0
              ? Text(
                  "No Data Found",
                  style: TextStyle(color: Colors.white),
                )
              : CustomSearchDetails(
                  onTap: (index) {
                    HomePageControlller.naviagtorToPlaySouraScreen(
                        context: context, index: index);
                  },
                  itemCount: snapshot.data!.length,
                  ListSouraModel: snapshot.data!,
                ),
        )
      ],
    );
  }
}
