import 'package:flutter/material.dart';
import 'package:flutter_animation/models/location.dart';
import 'package:flutter_animation/widget/details_cont.dart';
import 'package:flutter_animation/widget/image_widget.dart';

class ImageCard extends StatefulWidget {
  final Locations location;
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
            duration: const Duration(microseconds: 500),
            bottom: isExpanded ? 40 : 100,
            width: isExpanded ? size.width * 0.78 : size.width * 0.7,
            height: isExpanded ? size.height * 0.6 : size.height * 0.5,
            child: const DetailsContainer(),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 500),
            bottom: isExpanded ? 150 : 100,
            child: GestureDetector(
              onPanUpdate: onUpdate,
              child: ImageWidget(location: widget.location),
            ),
          ),
        ],
      ),
    );
  }

  void onUpdate(DragUpdateDetails details) {
    if (details.delta.dy < 0) {
      setState(() => isExpanded = true);
    }else if( details.delta.dy > 0){
      setState(() => isExpanded = false);
    }
  }
}
