import 'package:flutter/material.dart';
import '../../../config/app_text_styles.dart';
import '../../../models/card_image_model.dart';
import '../../../services/browser_services.dart';

class WebsiteBody extends StatefulWidget {
  @override
  _WebsiteBodyState createState() => _WebsiteBodyState();
}

class _WebsiteBodyState extends State<WebsiteBody> {
  final browserServices = BrowserServices();
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
                style: AppTextStyles.websiteTextStyle,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Support',
              style: AppTextStyles.websiteTitleTextStyle,
            ),
            SizedBox(height: 15),
            GestureDetector(
              onTap: () => browserServices.openLink(''),
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Text.rich(
                  TextSpan(
                    text: 'There\'s a mobile apk ',
                    style: AppTextStyles.websiteTextStyle,
                    children: [
                      TextSpan(
                        text: 'Download Here',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 8),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Payment Information',
                style: AppTextStyles.websiteTextStyle,
              ),
            ),
            SizedBox(height: 8),
            Card(
              color: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Via Bank',
                      style: AppTextStyles.websiteTitleTextStyle,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Nib: 000810010001640700106',
                            style: AppTextStyles.websiteCardTextStyle,
                          ),
                          Text(
                            'Account Name: Nidia Pina Barros',
                            style: AppTextStyles.websiteCardTextStyle,
                          ),
                          Text(
                            'BAI Bank',
                            style: AppTextStyles.websiteCardTextStyle,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Via Paypal',
                      style: AppTextStyles.websiteTitleTextStyle,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 10,
                      ),
                      child: Text(
                        'email: jsdevmarcelo@gmail.com',
                        style: AppTextStyles.websiteCardTextStyle,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Via MoneyGram',
                      style: AppTextStyles.websiteTitleTextStyle,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Name: Marcelo Cesar',
                            style: AppTextStyles.websiteCardTextStyle,
                          ),
                          Text(
                            'Age: 18years old',
                            style: AppTextStyles.websiteCardTextStyle,
                          ),
                          Text(
                            'E-mail: jsdevmarcelo@gmail.com',
                            style: AppTextStyles.websiteCardTextStyle,
                          ),
                          Text(
                            'Address: ASA, Praia, Achada Santo Antonio',
                            style: AppTextStyles.websiteCardTextStyle,
                          ),
                          Text(
                            'Postal code: 7602',
                            style: AppTextStyles.websiteCardTextStyle,
                          ),
                          Text(
                            'Phone number: +238 9561414',
                            style: AppTextStyles.websiteCardTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
