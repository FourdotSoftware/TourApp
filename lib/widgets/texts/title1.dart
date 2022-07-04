import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tour_app/const/app_colors.dart';

class Title1 extends StatelessWidget {
  const Title1(this.data, {Key? key, this.overflow, this.isBig = false})
      : super(key: key);
  final String data;
  final TextOverflow? overflow;
  final bool isBig;
  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      overflow: overflow,
      style: GoogleFonts.marcellus(
          color: AppColors.black,
          fontSize: isBig ? 42 : 26,
          fontWeight: FontWeight.w400),
    );
  }
}
