import 'package:flutter/material.dart';
import 'package:tour_app/app_state.dart';
import 'package:tour_app/const/app_colors.dart';
import 'package:tour_app/const/app_paddings.dart';
import 'package:tour_app/const/app_texts.dart';
import 'package:tour_app/widgets/pages/discover_page/chosen_box.dart';
import 'package:tour_app/widgets/pages/discover_page/discover_page_appbar.dart';
import 'package:tour_app/widgets/pages/main_page/main_page_appbar.dart';
import 'package:tour_app/widgets/pages/main_page/navbar.dart';
import 'package:tour_app/widgets/texts/body_text7.dart';
import 'package:tour_app/widgets/texts/info.dart';
import 'package:tour_app/widgets/texts/title2.dart';

import '../widgets/pages/choice_date_page/date_box.dart';

class ChoiceDatePage extends StatefulWidget {
  const ChoiceDatePage({Key? key}) : super(key: key);

  @override
  State<ChoiceDatePage> createState() => _ChoiceDatePageState();
}

class _ChoiceDatePageState extends State<ChoiceDatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          AppPaddings.pagePadding(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppPaddings.pagePadding(),
                DiscoverPageAppBar(
                  data: AppTexts.choiceDate,
                  icon: Icons.more_vert,
                ),
                AppPaddings.mediumPadding(),
                ChosenBox(),
                AppPaddings.mediumPadding(),
                Title2(AppTexts.travelTime),
                AppPaddings.minPadding(),
                SizedBox(
                  height: 70,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 12,
                    itemBuilder: (BuildContext context, int index) {
                      return DateBox(
                        index: index,
                      );
                    },
                  ),
                ),
                AppPaddings.smallPadding(),
                Title2(AppTexts.travelDays),
                AppPaddings.minPadding(),
                SizedBox(
                  height: 70,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 12,
                    itemBuilder: (BuildContext context, int index) {
                      return DateBox(
                        index: index,
                      );
                    },
                  ),
                ),
                AppPaddings.smallPadding(),
                Title2(AppTexts.persons),
                AppPaddings.minPadding(),
                SizedBox(
                  height: 70,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 12,
                    itemBuilder: (BuildContext context, int index) {
                      return DateBox(
                        index: index,
                      );
                    },
                  ),
                ),
                AppPaddings.smallPadding(),
              ],
            ),
          ),
          Navbar()
        ],
      ),
    );
  }
}
