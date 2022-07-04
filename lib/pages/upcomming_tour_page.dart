import 'package:flutter/material.dart';
import 'package:tour_app/const/app_colors.dart';
import 'package:tour_app/const/app_images.dart';
import 'package:tour_app/const/app_paddings.dart';
import 'package:tour_app/const/app_texts.dart';
import 'package:tour_app/widgets/pages/discover_page/discover_page_appbar.dart';
import 'package:tour_app/widgets/pages/main_page/location_item.dart';
import 'package:tour_app/widgets/pages/main_page/main_page_appbar.dart';
import 'package:tour_app/widgets/pages/main_page/navbar.dart';
import 'package:tour_app/widgets/pages/main_page/price_field.dart';
import 'package:tour_app/widgets/texts/body_text10.dart';
import 'package:tour_app/widgets/texts/body_text11.dart';
import 'package:tour_app/widgets/texts/body_text12.dart';
import 'package:tour_app/widgets/texts/body_text13.dart';
import 'package:tour_app/widgets/texts/title2.dart';

import '../widgets/pages/tour_detail_page/transport_field.dart';
import '../widgets/pages/upcomming_tour_page/history_content.dart';

class UpcommingTourPage extends StatefulWidget {
  const UpcommingTourPage({Key? key}) : super(key: key);

  @override
  State<UpcommingTourPage> createState() => _UpcommingTourPageState();
}

class _UpcommingTourPageState extends State<UpcommingTourPage> {
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
                  AppPaddings.pagePadding(),
                  DiscoverPageAppBar(
                    data: AppTexts.upcommingTour,
                    icon: Icons.more_vert,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                        5,
                        (index) => TransportField(
                              index: index,
                            )),
                  ),
                  AppPaddings.mediumPadding(),
                  Title2("7 day up to the next tour"),
                  AppPaddings.smallPadding(),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.white),
                    child: AppPaddings.pagePadding(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          BodyText12("15 Feb"),
                          Container(
                            height: 1.5,
                            width: 180,
                            color: AppColors.veryLightPink,
                            child: Icon(
                              Icons.directions_bus_outlined,
                              color: AppColors.orange,
                            ),
                          ),
                          BodyText12("22 Feb"),
                        ],
                      ),
                    ),
                  ),
                  AppPaddings.mediumPadding(),
                  Title2(AppTexts.history),
                  AppPaddings.smallPadding(),
                  HistoryContent(),
                  AppPaddings.smallPadding(),
                  HistoryContent(),
                  AppPaddings.pagePadding(),
                  AppPaddings.pagePadding(),
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
