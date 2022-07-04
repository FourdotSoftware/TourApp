import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tour_app/const/app_colors.dart';

class BodyText13 extends StatelessWidget {
  const BodyText13(this.data, {Key? key, this.overflow, this.isLight = false})
      : super(key: key);
  final String data;
  final bool isLight;
  final TextOverflow? overflow;
  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      overflow: overflow,
      style: GoogleFonts.poppins(
          color: isLight ? AppColors.white : AppColors.black,
          fontSize: 10,
          fontWeight: FontWeight.w500),
    );
  }
}
