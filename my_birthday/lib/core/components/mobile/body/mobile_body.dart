import 'package:flutter/material.dart';
import '../../../config/app_text_styles.dart';

class MobileBody extends StatefulWidget {
  @override
  _MobileBodyState createState() => _MobileBodyState();
}

class _MobileBodyState extends State<MobileBody> {
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
              style: AppTextStyles.mobileTitleTextStyle,
            ),
            SizedBox(height: 20),
            Card(
              color: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18)),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Image(
                  image: NetworkImage(
                      'https://1000logos.net/wp-content/uploads/2017/02/Harvard-Logo-Meaning-history.jpg'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
