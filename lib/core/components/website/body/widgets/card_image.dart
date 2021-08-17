import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  final String imagePath;
  CardImage({@required this.imagePath});
  @override
  Card build(BuildContext context) {
    return Card(
      color: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Image(
          image: AssetImage(imagePath),
        ),
      ),
    );
  }
}
