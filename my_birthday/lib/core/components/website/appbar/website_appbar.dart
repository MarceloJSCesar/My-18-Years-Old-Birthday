import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../../../config/app_text_styles.dart';
import '../../../config/app_images_name.dart';

class WebsiteAppBar extends PreferredSize {
  final BuildContext context;
  final List<String> names;
  WebsiteAppBar({@required this.context, @required this.names})
      : super(
          preferredSize: Size.fromHeight(420),
          child: SafeArea(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    AppImagesName.websiteBackgroundPath,
                  ),
                ),
              ),
              child: Container(
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
