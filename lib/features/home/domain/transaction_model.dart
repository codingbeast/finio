import 'package:flutter/material.dart';

class TransactionModel {
  final String title;
  final DateTime date;
  final double amount;
  final IconData icon;
  final String categoryName;

  const TransactionModel({
    required this.title,
    required this.date,
    required this.amount,
    required this.icon,
    required this.categoryName,
  });

  String get amountString {
    return '-₹${amount.toStringAsFixed(2)}';
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'date': date.millisecondsSinceEpoch,
      'amount': amount,
      'iconCodePoint': icon.codePoint,
      'iconFontFamily': icon.fontFamily,
      'iconFontPackage': icon.fontPackage,
      'categoryName': categoryName,
    };
  }

  factory TransactionModel.fromMap(Map<dynamic, dynamic> map) {
    return TransactionModel(
      title: map['title'] as String,
      date: map['date'] is int ? DateTime.fromMillisecondsSinceEpoch(map['date'] as int) : DateTime.now(),
      amount: (map['amount'] as num).toDouble(),
      icon: IconData(
        map['iconCodePoint'] as int,
        fontFamily: map['iconFontFamily'] as String?,
        fontPackage: map['iconFontPackage'] as String?,
      ),
      categoryName: map['categoryName'] as String,
    );
  }
}
