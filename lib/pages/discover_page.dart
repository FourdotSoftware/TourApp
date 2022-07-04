import 'package:flutter/material.dart';
import 'package:tour_app/const/app_colors.dart';
import 'package:tour_app/const/app_paddings.dart';
import 'package:tour_app/const/app_texts.dart';
import 'package:tour_app/widgets/texts/body_text3.dart';
import 'package:tour_app/widgets/texts/title1.dart';
import 'package:tour_app/widgets/texts/title2.dart';
import 'package:tour_app/widgets/texts/title3.dart';

import '../widgets/pages/discover_page/chosen.dart';
import '../widgets/pages/discover_page/chosen_box.dart';
import '../widgets/pages/discover_page/country_container.dart';
import '../widgets/pages/discover_page/discover_page_appbar.dart';
import '../widgets/pages/main_page/navbar.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SingleChildScrollView(
            child: AppPaddings.pagePadding(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppPaddings.mediumPadding(),
                  DiscoverPageAppBar(
                    icon: Icons.more_vert,
                    data: AppTexts.discover,
                  ),
                  AppPaddings.mediumPadding(),
                  ChosenBox(),
                  AppPaddings.mediumPadding(),
                  Title2(AppTexts.byRegion),
                  SizedBox(
                    height: 260,
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        childAspectRatio: 157 / 90,
                        crossAxisCount: 2,
                      ),
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return CountryContainer(
                          index: index,
                        );
                      },
                    ),
                  ),
                  Title2(AppTexts.byUser),
                  SizedBox(
                    height: 260,
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        childAspectRatio: 157 / 90,
                        crossAxisCount: 2,
                      ),
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return CountryContainer(
                          index: index,
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
          ),
          Navbar()
        ],
      ),
    );
  }
}
