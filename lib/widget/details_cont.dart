import 'package:flutter/material.dart';
import 'package:flutter_animation/data/locations.dart';
import 'package:flutter_animation/models/location.dart';
import 'package:flutter_animation/models/review.dart';
import 'package:flutter_animation/widget/star_widget.dart';

class DetailsContainer extends StatelessWidget {
  final Locations locations;
  const DetailsContainer({super.key, required this.locations});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            locations.addressLine1,
            style: const TextStyle(fontSize: 25, color: Colors.black),
          ),
          const SizedBox(height: 10),
          subtitleRate(),
          const SizedBox(height: 10),
          review()
        ],
      ),
    );
  }

  Widget subtitleRate() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            locations.addressLine2,
            style: const TextStyle(fontSize: 25, color: Colors.black45),
          ),
          StarWidget(stars: locations.starRating)
        ],
      );

  Widget review() => Row(
        children: locations.reviews
            .map((review) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.black12,
                    child: Image.asset(review.urlImage),
                  ),
            ))
            .toList(),
      );
}
