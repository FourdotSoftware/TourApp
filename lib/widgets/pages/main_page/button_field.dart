import 'package:flutter/material.dart';

import '../../../const/app_colors.dart';

class ButtonField extends StatelessWidget {
  const ButtonField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            fixedSize: MaterialStateProperty.all(Size(40, 55)),
            backgroundColor: MaterialStateProperty.all(AppColors.orange)),
        child: Icon(Icons.search));
  }
}
