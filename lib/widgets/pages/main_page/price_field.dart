import 'package:flutter/material.dart';

import '../../../const/app_colors.dart';
import '../../../const/app_paddings.dart';
import '../../../const/app_texts.dart';
import '../../texts/info.dart';

class Pricefield extends StatelessWidget {
  const Pricefield({
    Key? key,
    this.data,
  }) : super(key: key);
  final String? data;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.orange, borderRadius: BorderRadius.circular(7)),
      child: AppPaddings.minSymmetricPadding(child: Info(data!)),
    );
  }
}
