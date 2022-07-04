import 'package:flutter/material.dart';
import 'package:tour_app/const/app_colors.dart';
import 'package:tour_app/const/app_images.dart';
import 'package:tour_app/const/app_paddings.dart';
import 'package:tour_app/const/app_texts.dart';
import 'package:tour_app/widgets/texts/body_text2.dart';
import 'package:tour_app/widgets/texts/body_text3.dart';
import 'package:tour_app/widgets/texts/title1.dart';
import 'package:tour_app/widgets/texts/title2.dart';
import 'package:tour_app/widgets/texts/title3.dart';
import 'package:tour_app/widgets/texts/title4.dart';

import '../widgets/pages/main_page/button_field.dart';
import '../widgets/pages/main_page/image_content.dart';
import '../widgets/pages/main_page/main_page_appbar.dart';
import '../widgets/pages/main_page/navbar.dart';
import '../widgets/pages/main_page/see_all_field.dart';
import '../widgets/pages/main_page/text_field_field.dart';
import '../widgets/pages/main_page/title_content.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                AppPaddings.pagePadding(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MainPageAppbar(
                        data: "",
                      ),
                      AppPaddings.symmetricPadding(
                          child: Title1(AppTexts.title)),
                      Row(
                        children: [
                          TextFieldField(AppTexts.hintText),
                          AppPaddings.smallPadding(),
                          ButtonField(),
                        ],
                      ),
                      AppPaddings.mediumPadding(),
                      Title2(AppTexts.myLocation),
                      AppPaddings.smallPadding(),
                      TitleContent(),
                      AppPaddings.mediumPadding(),
                      SeeAllField(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 190,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        children: [
                          AppPaddings.smallPadding(),
                          ImageContent(),
                        ],
                      );
                    },
                  ),
                ),
                AppPaddings.pagePadding(),
                AppPaddings.pagePadding()
              ],
            ),
          ),
          Navbar()
        ],
      ),
    );
  }
}
