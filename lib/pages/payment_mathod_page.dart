import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:tour_app/app_state.dart';
import 'package:tour_app/const/app_colors.dart';
import 'package:tour_app/const/app_images.dart';
import 'package:tour_app/const/app_paddings.dart';
import 'package:tour_app/const/app_texts.dart';
import 'package:tour_app/widgets/images/history_image.dart';
import 'package:tour_app/widgets/texts/body_text3.dart';
import 'package:tour_app/widgets/texts/body_text4.dart';
import 'package:tour_app/widgets/texts/body_text5.dart';
import 'package:tour_app/widgets/texts/body_text6.dart';
import 'package:tour_app/widgets/texts/body_text7.dart';
import 'package:tour_app/widgets/texts/info.dart';
import 'package:tour_app/widgets/texts/title2.dart';
import 'package:tour_app/widgets/texts/title3.dart';
import 'package:tour_app/widgets/texts/title4.dart';

import '../widgets/pages/discover_page/discover_page_appbar.dart';
import '../widgets/pages/main_page/location_item.dart';
import '../widgets/pages/payment_mathod_page/card_field.dart';
import '../widgets/pages/payment_mathod_page/circle_field.dart';

class PaymentMathodPage extends StatefulWidget {
  const PaymentMathodPage({Key? key}) : super(key: key);

  @override
  State<PaymentMathodPage> createState() => _PaymentMathodPageState();
}

class _PaymentMathodPageState extends State<PaymentMathodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          AppPaddings.mediumPadding(),
          AppPaddings.pagePadding(
              child: DiscoverPageAppBar(data: AppTexts.paymentMathod)),
          cardField(),
          cardIndicator(),
          AppPaddings.pagePadding(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                indicatorField(),
                AppPaddings.mediumPadding(),
                Title2(AppTexts.history),
                SizedBox(
                  height: 1000,
                  child: ListView.builder(
                    itemCount: 15,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [historyContent(), AppPaddings.minPadding()],
                      );
                    },
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }

  SizedBox cardField() {
    return SizedBox(
      height: 210,
      child: PageView.builder(
        onPageChanged: (value) {
          setState(() {
            AppState.selectedCardIndex = value;
          });
        },
        controller: PageController(viewportFraction: 0.8),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return CardField();
        },
      ),
    );
  }

  Row cardIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
          5,
          (index) => CircleField(
                stateIndex: AppState.selectedCardIndex,
                index: index,
              )),
    );
  }

  Widget indicatorField() {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: AppColors.black5, blurRadius: 0.9)],
          borderRadius: BorderRadius.circular(15),
          color: Colors.white),
      child: AppPaddings.smallPadding(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircularPercentIndicator(
              radius: 35,
              progressColor: AppColors.orange,
              percent: AppState.percent!,
              center: BodyText6((AppState.percent! * 100).toString() + "%"),
            ),
            // AppPaddings.smallPadding(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BodyText6(AppTexts.limit),
                BodyText7(
                  AppTexts.limitt,
                  isOrange: true,
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Column historyContent() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HistoryImage(AppImages.photo1),
            LocationItem(
              data: AppTexts.location2,
              location: AppTexts.location,
              isOrange: true,
            ),
            BodyText7(
              AppTexts.money,
              isOrange: true,
            )
          ],
        ),
        AppPaddings.minPadding(),
        Container(
          color: AppColors.veryLightPink,
          height: 1,
          child: Row(
            children: [
              Text(""),
            ],
          ),
        )
      ],
    );
  }
}
