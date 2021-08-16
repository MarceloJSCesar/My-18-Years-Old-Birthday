import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../../models/name_model.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final listOfNames = NameModel();
  @override
  Scaffold build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              TyperAnimatedTextKit(
                text: listOfNames.names,
                textStyle: TextStyle(color: Colors.white),
                speed: Duration(milliseconds: 100),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
