import 'package:flutter/material.dart';
import 'package:tour_app/widgets/texts/body_text3.dart';

import '../../../const/app_colors.dart';
import '../../texts/body_text2.dart';
import '../../texts/title3.dart';

class LocationItem extends StatelessWidget {
  const LocationItem({
    Key? key,
    required this.data,
    required this.location,
    this.isOrange = false,
    this.isLight = false,
    this.isBig = false,
    this.subTitle,
  }) : super(key: key);
  final String data;
  final String location;
  final bool isOrange;
  final bool isLight;
  final bool isBig;
  final String? subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Title3(
          data,
          isDark: !isLight,
        ),
        BodyText3(
          subTitle ?? "",
          overflow: TextOverflow.ellipsis,
        ),
        Row(
          children: [
            Icon(
              Icons.location_on,
              size: 20,
              color: isOrange ? AppColors.orange : AppColors.white,
            ),
            BodyText2(
              location,
              isLight: isLight,
            )
          ],
        )
      ],
    );
  }
}
