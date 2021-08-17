import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../../../config/app_text_styles.dart';
import '../../../config/app_images_name.dart';

class MobileAppBar extends PreferredSize {
  final BuildContext context;
  final List<String> names;
  MobileAppBar({@required this.context, @required this.names})
      : super(
          preferredSize: Size.fromHeight(200),
          child: SafeArea(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    AppImagesName.mobileBackgroundPath,
                  ),
                ),
              ),
              child: Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: TyperAnimatedTextKit(
                  text: names,
                  textStyle: AppTextStyles.headerTitleTextStyle,
                  speed: Duration(milliseconds: 100),
                ),
              ),
            ),
          ),
        );
}
