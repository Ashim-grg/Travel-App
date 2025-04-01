import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailBox extends StatelessWidget {
  const DetailBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 75,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Center(
        child: Text(
          'Details',
          style: GoogleFonts.afacad(
            fontSize: 14,color: Colors.white,
            fontWeight: FontWeight.bold
          ),
          ),
      ),
    );
  }
}