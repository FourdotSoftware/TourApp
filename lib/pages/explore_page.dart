import 'package:flutter/material.dart';
import 'package:tour_app/const/app_images.dart';
import 'package:tour_app/const/app_paddings.dart';
import 'package:tour_app/const/app_texts.dart';
import 'package:tour_app/widgets/images/history_image.dart';
import 'package:tour_app/widgets/pages/main_page/image_content.dart';
import 'package:tour_app/widgets/pages/main_page/main_page_appbar.dart';
import 'package:tour_app/widgets/pages/main_page/navbar.dart';
import 'package:tour_app/widgets/texts/title2.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppPaddings.pagePadding(
                  child: MainPageAppbar(
                    data: AppTexts.explore,
                  ),
                ),
                SizedBox(
                  height: 90,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        children: [
                          AppPaddings.smallPadding(),
                          HistoryImage(
                            AppImages.photo1,
                            isMini: true,
                          ),
                        ],
                      );
                    },
                  ),
                ),
                AppPaddings.smallPadding(child: Title2(AppTexts.myLocation)),
                SizedBox(
                  height: 450,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        children: [
                          AppPaddings.smallPadding(),
                          ImageContent(
                            subTitle: AppTexts.explanation2,
                            isBig: true,
                          ),
                        ],
                      );
                    },
                  ),
                ),
                AppPaddings.pagePadding(),
                AppPaddings.pagePadding(),
                AppPaddings.pagePadding(),
                AppPaddings.pagePadding(),
              ],
            ),
          ),
          Navbar()
        ],
      ),
    );
  }
}
