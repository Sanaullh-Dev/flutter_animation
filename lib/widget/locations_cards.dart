import 'package:flutter/material.dart';
import 'package:flutter_animation/data/locations.dart';
import 'package:flutter_animation/widget/image_card.dart';

class LocationsCard extends StatefulWidget {
  const LocationsCard({super.key});

  @override
  State<LocationsCard> createState() => _LocationsCardState();
}

class _LocationsCardState extends State<LocationsCard> {
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
                return ImageCard(location: location);
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
          // const SizedBox(height: 12)
        ],
      );
}
