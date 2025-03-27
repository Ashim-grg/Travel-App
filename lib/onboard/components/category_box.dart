import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryBox extends StatelessWidget {
  final String category;
  final IconData? iconname; 
  final bool isSelected;
  final Function(bool) oncategorySelected;

  const CategoryBox({
    super.key,
    required this.category,
    required this.iconname, // Optional parameter for the icon
    required this.isSelected,
    required this.oncategorySelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: GestureDetector(
        onTap: () {
          oncategorySelected(!isSelected); 
        },
        child: Container(
          width: 110,
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: isSelected ? Colors.orange.shade700 : Colors.grey,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              if (iconname != null)
                Icon(
                  iconname,
                  size: 30,
                  color: isSelected ? Colors.orange.shade700 : Colors.grey,
                ),
              Expanded(
                child: Text(
                  category,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis, 
                  textAlign: TextAlign.center,
                  style: GoogleFonts.afacad(
                    fontSize: 14,
                    color: isSelected ? Colors.orange.shade700 : Colors.grey,
                    
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
