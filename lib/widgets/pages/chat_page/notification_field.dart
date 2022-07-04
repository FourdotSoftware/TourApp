import 'package:flutter/material.dart';

import '../../../const/app_colors.dart';

class NotificationField extends StatelessWidget {
  const NotificationField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Icon(
          Icons.notifications,
          size: 30,
        ),
        CircleAvatar(
          backgroundColor: AppColors.white,
          radius: 6.5,
        ),
        CircleAvatar(
          backgroundColor: AppColors.orange,
          radius: 6,
        )
      ],
    );
  }
}
