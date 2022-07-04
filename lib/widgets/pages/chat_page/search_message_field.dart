import 'package:flutter/material.dart';

import '../../../const/app_paddings.dart';
import '../../../const/app_texts.dart';
import '../main_page/button_field.dart';
import '../main_page/text_field_field.dart';

class SearchMessageField extends StatelessWidget {
  const SearchMessageField(
    this.data, {
    Key? key,
  }) : super(key: key);
  final String data;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextFieldField(data),
        AppPaddings.smallPadding(),
        ButtonField()
      ],
    );
  }
}
