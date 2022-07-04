import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tour_app/const/app_colors.dart';

class Title3 extends StatelessWidget {
  const Title3(this.data, {Key? key, this.overflow, this.isDark = false})
      : super(key: key);
  final String data;
  final bool isDark;
  final TextOverflow? overflow;
  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      overflow: overflow,
      style: GoogleFonts.poppins(
          color: isDark ? AppColors.black : AppColors.white,
          fontSize: 16,
          fontWeight: FontWeight.w700),
    );
  }
}
