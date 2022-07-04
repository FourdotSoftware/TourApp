import 'package:flutter/material.dart';
import 'package:tour_app/const/app_colors.dart';
import 'package:tour_app/const/app_paddings.dart';
import 'package:tour_app/widgets/pages/main_page/price_field.dart';
import 'package:tour_app/widgets/texts/info.dart';

import '../../../const/app_images.dart';
import '../../../const/app_texts.dart';
import 'location_item.dart';

class ImageContent extends StatelessWidget {
  const ImageContent({
    Key? key,
    this.isBig = false,
    this.subTitle,
  }) : super(key: key);
  final bool isBig;
  final String? subTitle;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            AppImages.photo3,
            height: isBig ? 438 : 190,
            width: 295,
            fit: BoxFit.cover,
          ),
        ),
        AppPaddings.mediumPadding(
          child: Container(
            height: isBig ? 80 : 45,
            width: 265,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LocationItem(
                  subTitle: subTitle,
                  data: AppTexts.title2,
                  location: AppTexts.location,
                  isOrange: false,
                  isLight: true,
                ),
                Pricefield(
                  data: AppTexts.price,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
