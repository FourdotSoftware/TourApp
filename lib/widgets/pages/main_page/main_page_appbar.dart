import 'package:flutter/material.dart';
import 'package:tour_app/const/app_paddings.dart';
import 'package:tour_app/widgets/pages/main_page/profile_photo.dart';
import 'package:tour_app/widgets/texts/title1.dart';

import '../../../const/app_colors.dart';

class MainPageAppbar extends StatelessWidget {
  const MainPageAppbar({
    Key? key,
    this.data,
  }) : super(key: key);
  final String? data;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppPaddings.mediumPadding(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.short_text_outlined,
              size: 35,
              color: AppColors.black,
            ),
            Title1(data!),
            ProfilePhoto()
          ],
        ),
      ],
    );
  }
}
