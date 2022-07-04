import 'package:flutter/material.dart';
import 'package:tour_app/const/app_colors.dart';
import 'package:tour_app/const/app_paddings.dart';
import 'package:tour_app/const/app_texts.dart';
import 'package:tour_app/widgets/pages/discover_page/discover_page_appbar.dart';
import 'package:tour_app/widgets/pages/main_page/navbar.dart';
import 'package:tour_app/widgets/pages/payment_page/payment_page_button_field.dart';

class DatePage extends StatefulWidget {
  const DatePage({Key? key}) : super(key: key);

  @override
  State<DatePage> createState() => _DatePageState();
}

class _DatePageState extends State<DatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          AppPaddings.pagePadding(
            child: Column(
              children: [
                AppPaddings.pagePadding(),
                DiscoverPageAppBar(
                    data: AppTexts.selectDate, icon: Icons.more_vert),
                AppPaddings.pagePadding(),
                Container(
                  color: AppColors.orange,
                  height: 278,
                  width: 330,
                  child: Text(""),
                ),
                AppPaddings.pagePadding(),
                PaymentPageButtonField(data: AppTexts.startNowTour)
              ],
            ),
          ),
          Navbar()
        ],
      ),
    );
  }
}
