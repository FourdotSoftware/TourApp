import 'package:flutter/material.dart';
import 'package:tour_app/const/app_paddings.dart';

import '../../../const/app_colors.dart';
import '../../../const/app_images.dart';
import '../../../const/app_texts.dart';
import '../../texts/body_text3.dart';
import 'location_item.dart';

class TitleContent extends StatelessWidget {
  const TitleContent({
    Key? key,
    this.isMini = false,
  }) : super(key: key);
  final bool isMini;

  @override
  Widget build(BuildContext context) {
    return AppPaddings.smallPadding(
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Container(
            decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(15)),
            child: AppPaddings.standartPadding(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(AppImages.photo1)),
                      AppPaddings.smallPadding(),
                      LocationItem(
                        data: AppTexts.title2,
                        location: AppTexts.location,
                        isOrange: true,
                      )
                    ],
                  ),
                  AppPaddings.smallPadding(),
                  BodyText3(AppTexts.explanation)
                ],
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.bookmark,
                color: AppColors.orange,
                size: isMini ? 30 : 38,
              ),
              AppPaddings.smallPadding()
            ],
          )
        ],
      ),
    );
  }
}
