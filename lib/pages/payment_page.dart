import 'package:flutter/material.dart';
import 'package:tour_app/const/app_paddings.dart';
import 'package:tour_app/const/app_texts.dart';
import 'package:tour_app/widgets/pages/discover_page/discover_page_appbar.dart';
import 'package:tour_app/widgets/pages/main_page/text_field_field.dart';
import 'package:tour_app/widgets/pages/payment_mathod_page/card_field.dart';
import 'package:tour_app/widgets/texts/body_text9.dart';
import 'package:tour_app/widgets/texts/title3.dart';

import '../const/app_colors.dart';
import '../widgets/pages/main_page/button_field.dart';
import '../widgets/pages/payment_page/payment_page_button_field.dart';
import '../widgets/pages/payment_page/payment_page_text_field.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: AppPaddings.pagePadding(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppPaddings.mediumPadding(),
            DiscoverPageAppBar(data: AppTexts.payment),
            BodyText9(AppTexts.cardNumber),
            PaymentPageTextField(
              data: AppTexts.hintText2,
              icon: Icon(Icons.backup),
            ),
            AppPaddings.mediumPadding(),
            Row(
              children: [
                cardInformation(title: AppTexts.expDate, data: "mm/yy"),
                AppPaddings.mediumPadding(),
                cardInformation(title: AppTexts.ccv, data: "435")
              ],
            ),
            BodyText9(AppTexts.country),
            PaymentPageTextField(
              data: AppTexts.unitedStates,
              icon: Icon(Icons.expand_more),
            ),
            AppPaddings.mediumPadding(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CardField(),
              ],
            )),
            PaymentPageButtonField(
              data: AppTexts.confirmPayment,
            )
          ],
        ),
      ),
    );
  }

  Widget cardInformation({String? data, String? title}) {
    return SizedBox(
      height: 100,
      width: 146,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          BodyText9(title!),
          PaymentPageTextField(
            data: data,
          )
        ],
      ),
    );
  }
}
