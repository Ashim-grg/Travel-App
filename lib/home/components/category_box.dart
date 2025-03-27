import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/home/model/categories.dart';

class CategorySelectBox extends StatefulWidget {
  final Categories category; 
  const CategorySelectBox({super.key,required this.category});

  @override
  State<CategorySelectBox> createState() => _CategorySelectBoxState();
}

class _CategorySelectBoxState extends State<CategorySelectBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 90,
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.grey
        ),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Center(
        child: Text(
          widget.category.category,
          style: GoogleFonts.afacad(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}