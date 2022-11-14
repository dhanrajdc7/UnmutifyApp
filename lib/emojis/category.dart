import 'package:flutter/material.dart';
import 'package:unmutify/emojis/sub_category.dart';

class Category {

  String name;
  IconData icon;
  List<SubCategory> items;

  Category({required this.name, required this.icon, required this.items});
}