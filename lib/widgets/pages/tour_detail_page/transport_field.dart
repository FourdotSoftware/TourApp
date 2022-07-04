import 'package:flutter/material.dart';

import '../../../app_state.dart';
import '../../../const/app_colors.dart';
import '../../../const/app_paddings.dart';

class TransportField extends StatefulWidget {
  const TransportField({
    Key? key,
    this.index,
  }) : super(key: key);
  final int? index;

  @override
  State<TransportField> createState() => _TransportFieldState();
}

class _TransportFieldState extends State<TransportField> {
  @override
  Widget build(BuildContext context) {
    return AppPaddings.smallPadding(
      child: InkWell(
        onTap: () {
          setState(() {
            AppState.selectedTransportIndex == widget.index
                ? AppState.selectedTransportIndex = -1
                : AppState.selectedTransportIndex = widget.index;
          });
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppState.selectedTransportIndex == widget.index
                  ? AppColors.orange
                  : AppColors.white),
          child: AppPaddings.smallPadding(
              child: Icon(
            Icons.directions_bus_filled_outlined,
            color: AppState.selectedTransportIndex == widget.index
                ? Colors.white
                : AppColors.brownGrey,
          )),
        ),
      ),
    );
  }
}
