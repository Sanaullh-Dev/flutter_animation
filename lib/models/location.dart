import 'package:flutter_animation/models/review.dart';

class Locations {
  final String name;
  final String urlImage;
  final String latitude;
  final String longitude;
  final String addressLine1;
  final String addressLine2;
  final int starRating;
  final List<Review> reviews;

  Locations({
    required this.reviews,
    required this.name,
    required this.urlImage,
    required this.latitude,
    required this.longitude,
    required this.addressLine1,
    required this.addressLine2,
    required this.starRating,
  });
}
