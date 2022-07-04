import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tour_app/app_state.dart';
import 'package:tour_app/const/app_colors.dart';
import 'package:tour_app/const/app_images.dart';
import 'package:tour_app/const/app_paddings.dart';
import 'package:tour_app/const/app_texts.dart';
import 'package:tour_app/widgets/pages/discover_page/discover_page_appbar.dart';
import 'package:tour_app/widgets/pages/main_page/location_item.dart';
import 'package:tour_app/widgets/pages/main_page/navbar.dart';
import 'package:tour_app/widgets/pages/main_page/price_field.dart';
import 'package:tour_app/widgets/pages/payment_mathod_page/circle_field.dart';
import 'package:tour_app/widgets/texts/body_text10.dart';
import 'package:tour_app/widgets/texts/body_text5.dart';
import 'package:tour_app/widgets/texts/title2.dart';
import 'package:tour_app/widgets/texts/title3.dart';

import '../widgets/pages/tour_detail_page/transport_field.dart';

class TourDetailPage extends StatefulWidget {
  const TourDetailPage({Key? key}) : super(key: key);

  @override
  State<TourDetailPage> createState() => _TourDetailPageState();
}

class _TourDetailPageState extends State<TourDetailPage> {
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
                    icon: Icons.more_vert,
                    icon2: Icons.notifications,
                    data: "",
                  ),
                  AppPaddings.smallPadding(),
                  SizedBox(
                    height: 200,
                    child: PageView.builder(
                      onPageChanged: (value) {
                        setState(() {
                          AppState.selectedPhotoIndex = value;
                        });
                      },
                      itemCount: 5,
                      itemBuilder: (context, index) =>
                          AppPaddings.smallPadding(child: photoField()),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        5,
                        (index) => CircleField(
                              stateIndex: AppState.selectedPhotoIndex,
                              index: index,
                            )),
                  ),
                  AppPaddings.smallPadding(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      LocationItem(
                        data: AppTexts.capitalofThailand,
                        location: AppTexts.location,
                        isOrange: true,
                      ),
                      Row(
                        children: [
                          Icon(Icons.thunderstorm_outlined),
                          BodyText5("30°C")
                        ],
                      )
                    ],
                  ),
                  AppPaddings.smallPadding(),
                  Pricefield(
                    data: AppTexts.price,
                  ),
                  AppPaddings.smallPadding(),
                  Title2(AppTexts.service),
                  AppPaddings.minPadding(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                        5,
                        (index) => TransportField(
                              index: index,
                            )),
                  ),
                  AppPaddings.smallPadding(),
                  BodyText10(AppTexts.title3),
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

  ClipRRect photoField() {
    return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(AppImages.photo6));
  }
}
