import 'package:flutter/material.dart';
import 'package:travel_app/onboard/components/category_box.dart';
import 'package:travel_app/onboard/model/category.dart';

class CategorySelection extends StatefulWidget {
  final List<bool> categorySelected; // List of boolean values to track selection
  final Function(int, bool) oncategorySelected; // Callback function to notify about category selection

  const CategorySelection({
    super.key,
    required this.categorySelected,
    required this.oncategorySelected,
  });

  @override
  State<CategorySelection> createState() => _CategorySelectionState();
}

class _CategorySelectionState extends State<CategorySelection> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        itemCount: Category.travellerList.length,
        itemBuilder: (context, index) {
          return CategoryBox(
            iconname: Icons.add,
            category: 'Category ${index + 1}',
            isSelected: widget.categorySelected[index], 
            oncategorySelected: (selected) {
              // Update the selection and call the callback
              widget.oncategorySelected(index, selected);
            },
          );
        },
      ),
    );
  }
}
