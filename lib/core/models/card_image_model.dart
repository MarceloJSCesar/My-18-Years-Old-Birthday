import 'package:flutter/material.dart';
import '../config/app_images_name.dart';
import '../components/website/body/widgets/card_image.dart';

class CardImageModel {
  final cards = <Widget>[
    CardImage(imagePath: AppImagesName.facebookImagePath),
    CardImage(imagePath: AppImagesName.amazonImagePath),
    CardImage(imagePath: AppImagesName.netflixImagePath),
    CardImage(imagePath: AppImagesName.googleImagePath),
    CardImage(imagePath: AppImagesName.ciscoImagePath),
    CardImage(imagePath: AppImagesName.appleImagePath),
    CardImage(imagePath: AppImagesName.harvardImagePath),
    CardImage(imagePath: AppImagesName.stanfordImagePath),
    CardImage(imagePath: AppImagesName.mitImagePath),
  ];
}
