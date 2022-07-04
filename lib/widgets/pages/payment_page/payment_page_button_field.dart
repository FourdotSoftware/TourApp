import 'package:flutter/material.dart';

import '../../../const/app_colors.dart';
import '../../../const/app_paddings.dart';
import '../../../const/app_texts.dart';
import '../../texts/title3.dart';

class PaymentPageButtonField extends StatelessWidget {
  const PaymentPageButtonField({
    Key? key,
    required this.data,
  }) : super(key: key);
  final String data;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: AppColors.orange,
          borderRadius: BorderRadius.circular(7),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppPaddings.minSymmetricPadding(child: Title3(data)),
          ],
        ));
  }
}
