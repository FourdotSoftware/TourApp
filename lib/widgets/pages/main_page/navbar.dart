import 'package:flutter/material.dart';

import '../../../const/app_colors.dart';
import '../../../const/app_paddings.dart';

class Navbar extends StatelessWidget {
  const Navbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppPaddings.mediumPadding(
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [BoxShadow(blurRadius: 5)],
            color: AppColors.white,
            borderRadius: BorderRadius.circular(10)),
        child: AppPaddings.mediumPadding(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.tune,
                color: AppColors.brownGrey,
              ),
              Icon(
                Icons.notifications,
                color: AppColors.brownGrey,
              ),
              Icon(
                Icons.message_sharp,
                color: AppColors.brownGrey,
              ),
              Icon(
                Icons.location_on,
                color: AppColors.brownGrey,
              ),
              Icon(
                Icons.person,
                color: AppColors.brownGrey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
