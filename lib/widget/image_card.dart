import 'package:flutter/material.dart';
import 'package:flutter_animation/data/locations.dart';
import 'package:flutter_animation/models/location.dart';
import 'package:flutter_animation/widget/card_image.dart';

class ImageCard extends StatefulWidget {
  final Location location;
  const ImageCard({super.key, required this.location});

  @override
  State<ImageCard> createState() => _ImageCardState();
}

class _ImageCardState extends State<ImageCard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 500),
            // bottom: 100,
            child: GestureDetector(
              onPanUpdate: onUpdate,
              child: Container(
                color: Colors.red,
                // padding: EdgeInsets.symmetric(horizontal: 16),
                // width: size.width * 0.8,
                width: 500,
                height: 800,
                child: Image.asset(widget.location.urlImage),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onUpdate(DragUpdateDetails details) {
    if (details.delta.dy < 0) {}
  }
}
