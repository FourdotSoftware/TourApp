import 'package:flutter/material.dart';

import '../../../const/app_colors.dart';
import '../../../const/app_paddings.dart';
import '../../texts/body_text3.dart';

class Chosen extends StatelessWidget {
  const Chosen(
    this.data, {
    Key? key,
  }) : super(key: key);
  final String data;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.orange, borderRadius: BorderRadius.circular(7)),
      child: AppPaddings.minSymmetricPadding(
        child: Row(
          children: [
            BodyText3(
              data,
              isLight: true,
            ),
            BodyText3(
              "x",
              isLight: true,
            )
          ],
        ),
      ),
    );
  }
}
