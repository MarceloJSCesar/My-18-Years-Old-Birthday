import 'package:flutter/material.dart';
import '../../../config/app_text_styles.dart';
import '../../../models/card_image_model.dart';

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
            Container(
              height: 100,
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
                style: AppTextStyles.mobileTextStyle,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Support',
              style: AppTextStyles.mobileTitleTextStyle,
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
