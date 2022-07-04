import 'package:flutter/material.dart';
import 'package:tour_app/const/app_paddings.dart';

import '../../../app_state.dart';
import '../../../const/app_colors.dart';
import '../../texts/body_text7.dart';
import '../../texts/info.dart';

class DateBox extends StatefulWidget {
  const DateBox({
    Key? key,
    // required this.widget,
    // this.data,
    // this.datatwo,
    this.index,
  }) : super(key: key);

  // final ChoiceDatePage widget;
  // final String? data;
  // final String? datatwo;
  final int? index;

  @override
  State<DateBox> createState() => _DateBoxState();
}

class _DateBoxState extends State<DateBox> {
  @override
  Widget build(BuildContext context) {
    return AppPaddings.smallPadding(
      child: InkWell(
        onTap: () {
          setState(() {
            AppState.selectedMoonIndex == widget.index
                ? AppState.selectedMoonIndex = -1
                : AppState.selectedMoonIndex = widget.index;
          });
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: AppState.selectedMoonIndex == widget.index
                ? AppColors.orange
                : AppColors.white,
          ),
          child: AppPaddings.mediumPadding(
            child: AppState.selectedMoonIndex == widget.index
                ? Info("february")
                : BodyText7("march"),
          ),
        ),
      ),
    );
  }
}
