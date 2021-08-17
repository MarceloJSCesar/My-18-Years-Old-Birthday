import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../../models/name_model.dart';
import '../../config/app_images_name.dart';
import '../../config/app_text_styles.dart';
import '../../components/mobile/body/mobile_body.dart';
import '../../components/website/body/website_body.dart';
import '../../components/mobile/appbar/mobile_appbar.dart';
import '../../components/website/appbar/website_appbar.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Orientation get orientation => MediaQuery.of(context).orientation;
  List<String> get names => NameModel().names;
  @override
  Scaffold build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: orientation == Orientation.portrait
          ? MobileAppBar(
              context: context,
              names: names,
            )
          : WebsiteAppBar(
              context: context,
              names: names,
            ),
      body: SingleChildScrollView(
        child:
            orientation == Orientation.portrait ? MobileBody() : WebsiteBody(),
      ),
    );
  }
}
