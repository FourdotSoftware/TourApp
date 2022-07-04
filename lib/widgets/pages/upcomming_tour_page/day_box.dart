import 'package:flutter/material.dart';

import '../../../const/app_colors.dart';
import '../../../const/app_paddings.dart';
import '../../texts/body_text13.dart';

class DayBox extends StatelessWidget {
  const DayBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: AppColors.veryLightPink),
      child: AppPaddings.minSymmetricPadding(child: BodyText13("7 day")),
    );
  }
}
