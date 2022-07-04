import 'package:flutter/material.dart';
import 'package:tour_app/const/app_colors.dart';
import 'package:tour_app/widgets/pages/upcomming_tour_page/day_box.dart';

import '../../../const/app_images.dart';
import '../../../const/app_paddings.dart';
import '../../../const/app_texts.dart';
import '../../../pages/upcomming_tour_page.dart';
import '../main_page/location_item.dart';
import '../main_page/price_field.dart';

class HistoryContent extends StatelessWidget {
  const HistoryContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: AppColors.white),
      child: AppPaddings.minSymmetricPadding(
        child: Row(
          // mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  AppImages.photo3,
                  height: 95,
                  width: 65,
                )),
            AppPaddings.minPadding(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LocationItem(
                  data: AppTexts.title2,
                  location: AppTexts.location,
                  isOrange: true,
                ),
                AppPaddings.minPadding(),
                Row(
                  children: [
                    DayBox(),
                    AppPaddings.minPadding(),
                    DayBox(),
                  ],
                )
              ],
            ),
            Pricefield(
              data: AppTexts.price,
            )
          ],
        ),
      ),
    );
  }
}
