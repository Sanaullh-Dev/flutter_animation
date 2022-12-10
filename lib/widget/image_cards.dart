import 'package:flutter/material.dart';
import 'package:flutter_animation/data/locations.dart';

class ImageCard extends StatefulWidget {
  const ImageCard({super.key});

  @override
  State<ImageCard> createState() => _ImageCardState();
}

class _ImageCardState extends State<ImageCard> {
  final pageController = PageController(viewportFraction: 0.8);
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: pageController,
              itemCount: locations.length,
              itemBuilder: (context, index) {
                final location = locations[index];
                return Center();
              },
              onPageChanged: (index) => setState(() {
                pageIndex = index;
              }),
            ),
          ),
          Text(
            '${pageIndex + 1}/${locations.length}',
            style: const TextStyle(color: Colors.white70),
          ),
          const SizedBox(height: 12)
        ],
      );
}
