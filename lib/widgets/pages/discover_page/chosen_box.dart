import 'package:flutter/material.dart';

import '../../../const/app_colors.dart';
import '../../../const/app_paddings.dart';
import '../../../const/app_texts.dart';
import 'chosen.dart';

class ChosenBox extends StatelessWidget {
  const ChosenBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.veryLightPink),
          borderRadius: BorderRadius.circular(7),
          color: Colors.white),
      child: AppPaddings.minSymmetricPadding(
        child: Row(
          children: [
            Chosen(AppTexts.europe),
            AppPaddings.minPadding(),
            Chosen(AppTexts.star),
          ],
        ),
      ),
    );
  }
}
