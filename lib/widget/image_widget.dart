import 'package:flutter/material.dart';
import 'package:flutter_animation/models/location.dart';

class ImageWidget extends StatelessWidget {
  final Locations location;
  const ImageWidget({super.key, required this.location});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      width: size.width * 0.78,
      height: size.height * 0.5,
      child: Stack(
        children: [
          buildImage(),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              boxShadow: [
                BoxShadow(color: Colors.black26, blurRadius: 2, spreadRadius: 1)
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(location.name, style: customsTextStyle()),
                ),
                latLongWidget()
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildImage() => SizedBox.expand(
        child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            child: Image.asset(location.urlImage, fit: BoxFit.cover)),
      );

  Widget latLongWidget() => Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              location.latitude,
              style: customsTextStyle().copyWith(fontSize: 20),
            ),
            const Icon(Icons.location_on, size: 30, color: Colors.white),
            Text(
              location.longitude,
              style: customsTextStyle().copyWith(fontSize: 20),
            ),
          ],
        ),
      );

  TextStyle customsTextStyle() => const TextStyle(
      color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25);
}
