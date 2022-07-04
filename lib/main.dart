import 'package:flutter/material.dart';
import 'package:tour_app/pages/chat_page.dart';
import 'package:tour_app/pages/choice_date_page.dart';
import 'package:tour_app/pages/date_page.dart';
import 'package:tour_app/pages/discover_page.dart';
import 'package:tour_app/pages/explore_page.dart';
import 'package:tour_app/pages/main_page.dart';
import 'package:tour_app/pages/map_page.dart';
import 'package:tour_app/pages/message_page.dart';
import 'package:tour_app/pages/onboarding_page.dart';
import 'package:tour_app/pages/payment_mathod_page.dart';
import 'package:tour_app/pages/payment_page.dart';
import 'package:tour_app/pages/tour_details_page.dart';
import 'package:tour_app/pages/upcomming_tour_page.dart';
import 'package:tour_app/widgets/images/message_image.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: MessagePage());
  }
}
