import 'package:flutter/material.dart';
import 'package:tour_app/const/app_colors.dart';
import 'package:tour_app/const/app_images.dart';
import 'package:tour_app/const/app_paddings.dart';
import 'package:tour_app/const/app_texts.dart';
import 'package:tour_app/widgets/images/message_image.dart';
import 'package:tour_app/widgets/pages/main_page/button_field.dart';
import 'package:tour_app/widgets/pages/main_page/navbar.dart';
import 'package:tour_app/widgets/pages/main_page/profile_photo.dart';
import 'package:tour_app/widgets/pages/main_page/text_field_field.dart';
import 'package:tour_app/widgets/texts/body_text11.dart';
import 'package:tour_app/widgets/texts/body_text6.dart';
import 'package:tour_app/widgets/texts/title1.dart';

import '../widgets/pages/chat_page/chat_page_appbar.dart';
import '../widgets/pages/chat_page/search_message_field.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SingleChildScrollView(
            child: AppPaddings.pagePadding(
              child: Column(
                children: [
                  AppPaddings.pagePadding(),
                  ChatPageAppBar(AppTexts.chat),
                  AppPaddings.pagePadding(),
                  SearchMessageField(AppTexts.searchMessage),
                  AppPaddings.smallPadding(),
                  SingleChildScrollView(
                    child: SizedBox(
                      height: 700,
                      child: ListView.builder(
                        itemCount: 15,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              messageField(),
                              AppPaddings.minPadding(),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                  AppPaddings.pagePadding(),
                  AppPaddings.pagePadding(),
                  AppPaddings.pagePadding(),
                  AppPaddings.pagePadding(),
                  AppPaddings.pagePadding(),
                  AppPaddings.pagePadding(),
                ],
              ),
            ),
          ),
          Navbar()
        ],
      ),
    );
  }

  Column messageField() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MessageImage(AppImages.photo4),
                AppPaddings.minPadding(),
                messagePlace()
              ],
            ),
            datePlace()
          ],
        ),
        AppPaddings.minPadding(),
        Container(
          height: 1,
          color: AppColors.veryLightPink,
          child: Row(
            children: [
              Text(""),
            ],
          ),
        )
      ],
    );
  }

  Column messagePlace() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BodyText6("John Wells"),
        BodyText11("If you want to experince")
      ],
    );
  }

  Column datePlace() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [BodyText11("13/12 2020"), BodyText11("9:15 AM")],
    );
  }
}
