import 'package:flutter/material.dart';

class CategoryModel {
  final String name;
  final IconData icon;
  final double amount;
  final Color color;

  const CategoryModel({
    required this.name,
    required this.icon,
    required this.amount,
    required this.color,
  });
}
