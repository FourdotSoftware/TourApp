import 'package:flutter/material.dart';
import 'package:tour_app/const/app_images.dart';
import 'package:tour_app/const/app_texts.dart';
import 'package:tour_app/models/boarding_model.dart';

class AppData {
  static BoardingModel boarding1 = BoardingModel(
      image: AppImages.image1,
      title: AppTexts.explore,
      subTitle: AppTexts.exploreTitle);
  static BoardingModel boarding2 = BoardingModel(
      image: AppImages.image1,
      title: AppTexts.enjoyTour,
      subTitle: AppTexts.enjoyTourTitle);
  static BoardingModel boarding3 = BoardingModel(
      image: AppImages.image1,
      title: AppTexts.easyPeasy,
      subTitle: AppTexts.easyPeasyTitle);

  static List<BoardingModel> boardings = [boarding1, boarding2, boarding3];
}
