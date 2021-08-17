import 'package:flutter/material.dart';
import '../../../config/app_text_styles.dart';
import '../../../models/website/card_image_model.dart';

class WebsiteBody extends StatefulWidget {
  @override
  _WebsiteBodyState createState() => _WebsiteBodyState();
}

class _WebsiteBodyState extends State<WebsiteBody> {
  @override
  SafeArea build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Dreams',
              style: AppTextStyles.websiteTitleTextStyle,
            ),
            SizedBox(height: 20),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: CardImageModel().cards,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'About',
              style: AppTextStyles.websiteTitleTextStyle,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Text(
                'So, I made this website yesterday, I decided to take one day to challenge myself build this website, where people who wants to send me gift or support me, it would be good , because I\'m working on my big project ideia , by my own yet, but in future you will see this project getting released. My big challenge is build what they say being impossible. Thanks for reading. GOD WITH ALL OF US',
                style: AppTextStyles.headerTitleTextStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
