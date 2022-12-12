import 'package:flutter/material.dart';
import 'package:flutter_animation/models/location.dart';

class CardImage extends StatelessWidget {
  final Locations location;
  const CardImage({super.key, required this.location});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      width: size.width * 0.8,
      height: size.height * 0.5,
      child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          child: Image.asset(location.urlImage, fit: BoxFit.fitWidth)),
    );
  }
}
