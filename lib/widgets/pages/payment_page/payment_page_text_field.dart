import 'package:flutter/material.dart';
import 'package:tour_app/app_state.dart';

import '../../../const/app_colors.dart';

class PaymentPageTextField extends StatelessWidget {
  const PaymentPageTextField({
    Key? key,
    this.data,
    this.icon,
  }) : super(key: key);
  final String? data;
  final Widget? icon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: AppColors.orange,
      decoration: InputDecoration(
        hintText: data,
        suffixIcon: icon,
        suffixIconColor: AppColors.brownGrey,
        hintStyle: TextStyle(color: AppColors.veryLightPink),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
            borderSide: BorderSide(color: AppColors.veryLightPink)),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
            borderSide: BorderSide(color: AppColors.veryLightPink)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
            borderSide: BorderSide(color: AppColors.orange)),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
            borderSide: BorderSide(color: AppColors.veryLightPink)),
      ),
    );
  }
}
