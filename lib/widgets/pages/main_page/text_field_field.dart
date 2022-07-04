import 'package:flutter/material.dart';

import '../../../const/app_colors.dart';
import '../../../const/app_texts.dart';

class TextFieldField extends StatelessWidget {
  const TextFieldField(
    this.data, {
    Key? key,
  }) : super(key: key);
  final String data;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        cursorColor: AppColors.orange,
        decoration: InputDecoration(
          hintText: data,
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
      ),
    );
  }
}
