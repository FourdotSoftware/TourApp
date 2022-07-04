import 'package:flutter/material.dart';
import 'package:tour_app/const/app_images.dart';
import 'package:tour_app/const/app_paddings.dart';
import 'package:tour_app/const/app_texts.dart';
import 'package:tour_app/widgets/pages/chat_page/chat_page_appbar.dart';
import 'package:tour_app/widgets/pages/chat_page/search_message_field.dart';
import 'package:tour_app/widgets/pages/main_page/navbar.dart';
import 'package:tour_app/widgets/pages/main_page/title_content.dart';
import 'package:tour_app/widgets/texts/title2.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
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
                      AppPaddings.pagePadding(),
                      ChatPageAppBar(AppTexts.map),
                      AppPaddings.pagePadding(),
                      SearchMessageField(AppTexts.hintText),
                      AppPaddings.mediumPadding(),
                      Title2(AppTexts.myLocation),
                    ],
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: PageView.builder(
                    controller: PageController(viewportFraction: 0.8),
                    itemCount: 5,
                    itemBuilder: (context, index) => TitleContent(
                      isMini: true,
                    ),
                  ),
                ),
                AppPaddings.smallPadding(),
                ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(AppImages.photo3))
              ],
            ),
          ),
          Navbar()
        ],
      ),
    );
  }
}
