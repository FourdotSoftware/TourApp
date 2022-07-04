import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tour_app/const/app_colors.dart';

class Title4 extends StatelessWidget {
  const Title4(this.data, {Key? key, this.overflow, this.isDark = false})
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
          color: isDark ? AppColors.black : AppColors.veryLightPink,
          fontSize: 14,
          fontWeight: FontWeight.w500),
    );
  }
}
