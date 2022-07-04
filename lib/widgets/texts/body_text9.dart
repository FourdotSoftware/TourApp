import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tour_app/const/app_colors.dart';

class BodyText9 extends StatelessWidget {
  const BodyText9(this.data, {Key? key, this.overflow, this.isOrange = false})
      : super(key: key);
  final String data;
  final bool isOrange;
  final TextOverflow? overflow;
  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      overflow: overflow,
      style: GoogleFonts.poppins(
          color: isOrange ? AppColors.orange : AppColors.brownGrey,
          fontSize: 16,
          fontWeight: FontWeight.w500),
    );
  }
}
