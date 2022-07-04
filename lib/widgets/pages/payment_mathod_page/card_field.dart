import 'package:flutter/material.dart';
import 'package:tour_app/widgets/texts/body_text5.dart';

import '../../../const/app_colors.dart';
import '../../../const/app_paddings.dart';
import '../../../const/app_texts.dart';
import '../../texts/body_text3.dart';
import '../../texts/body_text4.dart';
import '../../texts/info.dart';
import '../../texts/title3.dart';
import '../../texts/title4.dart';

class CardField extends StatelessWidget {
  const CardField({
    Key? key,
    this.cardIndex,
  }) : super(key: key);
  final int? cardIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // AppPaddings.minPadding(),
        Container(
          width: 280,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    blurRadius: 0.9,
                    offset: Offset(3, 5),
                    color: AppColors.black5)
              ]),
          child: AppPaddings.pagePadding(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Title4(
                      AppTexts.dabitCard,
                      isDark: true,
                    ),
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 12,
                          backgroundColor: AppColors.orange42,
                        ),
                        AppPaddings.circleSymmetricPadding(
                          child: CircleAvatar(
                            radius: 12,
                            backgroundColor: AppColors.orange71,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                AppPaddings.mediumPadding(),
                Info(
                  AppTexts.cardNo,
                  isDark: true,
                ),
                AppPaddings.mediumPadding(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Title3(
                          AppTexts.money,
                          isDark: true,
                        ),
                        BodyText3(AppTexts.name)
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BodyText4(AppTexts.expDate),
                        BodyText5(AppTexts.date)
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
