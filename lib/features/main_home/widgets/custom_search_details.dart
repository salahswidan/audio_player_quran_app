import 'package:audio_player_app/core/resourses/routes_managers.dart';
import 'package:audio_player_app/models/soura_model.dart';
import 'package:flutter/material.dart';

class CustomSearchDetails extends StatelessWidget {
  CustomSearchDetails({
    super.key,
    required this.ListSouraModel,
    required this.itemCount,
    required this.onTap,
  });
  final List<SouraModel> ListSouraModel;
  final int itemCount;
  final Function(int index) onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 198,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0),
        child: ListView.separated(
            //shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => GestureDetector(
                  onTap:  (){
              onTap(index);
            },
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          child: Image.asset(
                            ListSouraModel[index].image,
                            fit: BoxFit.cover,
                            width: 151,
                            height: 151,
                          ),
                          //child: Image.asset("assets/images/quran_image/qu3.jpg"),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        Text(
                          ListSouraModel[index].soura,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 9,
                        ),
                        Text(
                          ListSouraModel[index].reader,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffB1AFE9)),
                        ),
                      ],
                    ),
                  ),
                ),
            separatorBuilder: (context, index) => SizedBox(width: 17),
            itemCount: itemCount),
      ),
    );
  }
}
