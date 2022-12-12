import 'package:flutter/material.dart';

class StarWidget extends StatelessWidget {
  final int stars;
  const StarWidget({super.key, required this.stars});

  @override
  Widget build(BuildContext context) {
    final allStars = List.generate(4, (index) => index);

    return Row(
      children: allStars
          .map((index) => Container(
                margin: const EdgeInsets.only(right: 4),
                child: Icon(Icons.star_rate,
                    size: 25,
                    color: index <= stars ? Colors.amber[600] : Colors.blueGrey),
              ))
          .toList(),
    );
  }
}
