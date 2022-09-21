import 'package:flutter/material.dart';

class ImageBox extends StatelessWidget {
  final String imagePath;

  ImageBox({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(imagePath,
            height: 300,
            fit: BoxFit.cover
            ,
            alignment: Alignment.topCenter,)),
    )
    ;
  }
}
