import 'package:flutter/material.dart';
import 'package:tour_app/app_data.dart';
import 'package:tour_app/const/app_colors.dart';
import 'package:tour_app/const/app_images.dart';
import 'package:tour_app/const/app_paddings.dart';
import 'package:tour_app/const/app_texts.dart';
import 'package:tour_app/widgets/pages/payment_mathod_page/circle_field.dart';
import 'package:tour_app/widgets/texts/body_text9.dart';
import 'package:tour_app/widgets/texts/title1.dart';

import '../app_state.dart';
import '../widgets/pages/onboarding_page/back_next_box.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Expanded(
          child: PageView.builder(
            onPageChanged: (value) {
              setState(() {
                AppState.selectedBoardingIndex = value;
              });
            },
            itemCount: AppData.boardings.length,
            itemBuilder: (context, index) {
              return onBoardingField(
                  image: AppData.boardings[index].image,
                  title: AppData.boardings[index].title,
                  subTitle: AppData.boardings[index].subTitle);
            },
          ),
        ),
        AppPaddings.pagePadding(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // BackNextBox(Icons.arrow_left),
              Container(),
              Row(
                  children: List.generate(
                      AppData.boardings.length,
                      (index) => CircleField(
                            stateIndex: AppState.selectedBoardingIndex,
                            index: index,
                          ))),
              AppState.selectedBoardingIndex == 2
                  ? BackNextBox(Icons.arrow_right)
                  : Container(),
            ],
          ),
        )
      ]),
    );
  }

  Widget imageField({String? image}) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                backgroundColor: AppColors.orange42,
                radius: 140,
              ),
            ],
          ),
        ),
        AppPaddings.pagePadding(
          child: Container(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              // mainAxisAlignment: MainAxisAlignment.end,
              children: [
                AppPaddings.standartPadding(),
                Image.asset(
                  image!,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget onBoardingField({String? title, String? subTitle, String? image}) {
    return Column(
      children: [
        imageField(image: image),
        AppPaddings.pagePadding(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Title1(
                title!,
                isBig: true,
              ),
              AppPaddings.mediumPadding(),
              BodyText9(subTitle!),
            ],
          ),
        ),
      ],
    );
  }
}
