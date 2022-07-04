import 'package:flutter/material.dart';
import 'package:tour_app/const/app_images.dart';

import '../../../const/app_colors.dart';

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(45),
          child: Image.asset(
            AppImages.profilePhoto,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
        CircleAvatar(
          backgroundColor: AppColors.orange,
          radius: 6,
        )
      ],
    );
  }
}
