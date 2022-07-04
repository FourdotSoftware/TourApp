import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tour_app/const/app_colors.dart';

class Info extends StatelessWidget {
  const Info(this.data, {Key? key, this.overflow, this.isDark = false})
      : super(key: key);
  final String data;
  final TextOverflow? overflow;
  final bool isDark;
  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      overflow: overflow,
      style: GoogleFonts.poppins(
          color: isDark ? AppColors.black : AppColors.white,
          fontSize: 11,
          fontWeight: FontWeight.w700),
    );
  }
}
