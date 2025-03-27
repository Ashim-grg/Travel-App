import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
class Category {
  final String category;
  final IconData? iconPath;

  Category({required this.category,this.iconPath});


  static List<Category> travellerList = [
    Category(category: 'Trekker', iconPath: LucideIcons.baggageClaim),
    Category(category: 'Camper', iconPath:LucideIcons.backpack),
    Category(category: 'Global', iconPath: LucideIcons.ticket),
    Category(category: 'Wonderer', iconPath: LucideIcons.map),
    Category(category: 'Others', iconPath:LucideIcons.luggage),
  ];
  static List<Category> placesList = [
    Category(category: 'Nature', iconPath: LucideIcons.trees),
    Category(category: 'Beach', iconPath:LucideIcons.treePine),
    Category(category: 'Mountains', iconPath: LucideIcons.mountain),
    Category(category: 'Urban', iconPath: LucideIcons.building2),
    Category(category: 'Extreme Adventures', iconPath:LucideIcons.zap),
  ];
  static List<Category> weatherList = [
    Category(category: 'Sunny', iconPath: LucideIcons.sun),
    Category(category: 'Rainy', iconPath:LucideIcons.cloudSnow),
    Category(category: 'Snowy', iconPath: LucideIcons.snowflake),
    Category(category: 'Spring', iconPath: LucideIcons.flower),
    Category(category: 'Autumn', iconPath:LucideIcons.leaf),
  ];
  static List<Category> travelList = [
    Category(category: 'Once a week'),
    Category(category: 'Once a Month'),
    Category(category: 'Few times in a year' ),
    Category(category: 'Not Much'),
    Category(category: 'Depends'),
  ];
}