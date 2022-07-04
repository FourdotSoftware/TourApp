import 'package:flutter/material.dart';
import 'package:tour_app/const/app_colors.dart';
import 'package:tour_app/widgets/pages/chat_page/notification_field.dart';

import '../../../const/app_texts.dart';
import '../../texts/title1.dart';
import '../main_page/profile_photo.dart';

class ChatPageAppBar extends StatelessWidget {
  const ChatPageAppBar(
    this.data, {
    Key? key,
  }) : super(key: key);
  final String data;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [ProfilePhoto(), Title1(data), NotificationField()],
    );
  }
}
