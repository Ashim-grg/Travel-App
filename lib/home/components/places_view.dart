import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:travel_app/home/model/places.dart';

class PlacesView extends StatefulWidget {
  final Places places;
  const PlacesView({super.key,required this.places});

  @override
  State<PlacesView> createState() => _PlacesViewState();
}

class _PlacesViewState extends State<PlacesView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.white
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                widget.places.imagePath,fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: 10,
            child: Text(
              widget.places.placeName,
              style: GoogleFonts.afacad(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold
                ),
            ),
          ),
          Positioned(
            top: 120,
            left: 10,
            child: Text(
              widget.places.location,
              style: GoogleFonts.afacad(
                fontSize: 14,
                color: Colors.orange,
                fontWeight: FontWeight.bold
                ),
            ),
          ),
          Positioned(
            top: 108,
            right: 5,
            child: GestureDetector(
              
              child: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Transform.translate(
                      offset: Offset(5, 0),
                      child: Icon(
                        LucideIcons.chevronRight,
                        size: 15,
                        color: Colors.black,
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(-4, 0),
                      child: Icon(
                        LucideIcons.chevronRight,
                        size: 15,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ))
        ],
      ),
    );
  }
}