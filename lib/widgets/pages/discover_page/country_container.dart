import 'package:flutter/material.dart';
import 'package:tour_app/app_state.dart';

import '../../../const/app_colors.dart';
import '../../../const/app_paddings.dart';
import '../../../const/app_texts.dart';
import '../../texts/title3.dart';

class CountryContainer extends StatefulWidget {
  const CountryContainer({
    Key? key,
    this.index = -1,
  }) : super(key: key);
  final int index;
  @override
  State<CountryContainer> createState() => _CountryContainerState();
}

class _CountryContainerState extends State<CountryContainer> {
  @override
  Widget build(
    BuildContext? context,
  ) {
    return InkWell(
      onTap: () {
        setState(() {
          AppState.selectedCountryIndex == widget.index
              ? AppState.selectedCountryIndex = -1
              : AppState.selectedCountryIndex = widget.index;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppState.selectedCountryIndex == widget.index
              ? AppColors.orange
              : AppColors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: AppPaddings.maxSymmetricPadding(
            child: Title3(
          AppTexts.europe,
          isDark: !(AppState.selectedCountryIndex == widget.index),
        )),
      ),
    );
  }
}
