import 'package:flutter/material.dart';
import './views/home/home_view.dart';

class Birthday extends StatelessWidget {
  @override
  MaterialApp build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
    );
  }
}
