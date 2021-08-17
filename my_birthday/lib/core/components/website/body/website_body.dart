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
          ],
        ),
      ),
    );
  }
}
