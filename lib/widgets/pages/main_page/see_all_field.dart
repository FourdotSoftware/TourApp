import 'package:flutter/material.dart';

import '../../../const/app_texts.dart';
import '../../texts/title2.dart';
import '../../texts/title4.dart';

class SeeAllField extends StatelessWidget {
  const SeeAllField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Title2(AppTexts.bestPlace), Title4(AppTexts.seeAll)],
    );
  }
}
