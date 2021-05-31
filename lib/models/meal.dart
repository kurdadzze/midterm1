import 'package:flutter/foundation.dart';

class Meal {
  final int id;
  final String name;
  final String imageUrl;
  final String description;
  final double rating;
  final String category;

  const Meal({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.rating,
    required this.category,
  });
}
