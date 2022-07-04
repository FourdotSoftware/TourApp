import 'package:flutter/material.dart';
import 'package:tour_app/app_state.dart';
import 'package:tour_app/const/app_paddings.dart';

import '../../../const/app_colors.dart';

class CircleField extends StatefulWidget {
  const CircleField({
    Key? key,
    this.index,
    required this.stateIndex,
  }) : super(key: key);
  final int? index;
  final int? stateIndex;

  @override
  State<CircleField> createState() => _CircleFieldState();
}

class _CircleFieldState extends State<CircleField> {
  @override
  Widget build(BuildContext context) {
    return AppPaddings.minPadding(
      child: CircleAvatar(
        radius: widget.stateIndex == widget.index ? 6 : 4,
        backgroundColor: widget.stateIndex == widget.index
            ? AppColors.orange
            : AppColors.veryLightPink,
      ),
    );
  }
}
