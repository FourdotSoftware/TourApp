import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tour_app/const/app_colors.dart';

class Title2 extends StatelessWidget {
  const Title2(this.data, {Key? key, this.overflow}) : super(key: key);
  final String data;
  final TextOverflow? overflow;
  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      overflow: overflow,
      style: GoogleFonts.poppins(
          color: AppColors.black, fontSize: 18, fontWeight: FontWeight.w700),
    );
  }
}
