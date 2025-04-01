import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/locations/models/detail_box.dart';

class HotelBox extends StatefulWidget {
  final String hotelname;
  final String description;
  final int price;
  final String reviews;
  final String imagePath;

  const HotelBox({super.key,
  required this.hotelname,
  required this.description,
  required this.price,
  required this.reviews,
  required this.imagePath
  });

  @override
  State<HotelBox> createState() => _HotelBoxState();
}

class _HotelBoxState extends State<HotelBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 300,
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade500,
            offset: Offset(0,5),
            spreadRadius: 3,
            blurRadius: 7,
          ),
        ],
        color: Colors.white,
      ),
      child: Row(
        children: [
          SizedBox(
            height: 120,
            width: 110,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                widget.imagePath,
                fit: BoxFit.cover,
                ),
            ),
          ),
          SizedBox(width: 10,),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.hotelname,
                  style: GoogleFonts.afacad(fontSize: 18,fontWeight: FontWeight.bold),
                  ),
                SizedBox(height: 5,),
                Text(
                  widget.description,
                  textAlign: TextAlign.left,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.afacad(
                    fontSize: 14,
                    height: 1.2,
                    ),
                  ),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                          'NPrs.${widget.price} / day',
                          style: GoogleFonts.afacad(
                            fontSize: 14,
                            color: Colors.orange.shade700
                          ),
                          ),
                        Text(
                          widget.reviews,
                          style: GoogleFonts.afacad(
                            fontSize: 14,
                          ),
                          ),
                        ],
                      ),
                      const DetailBox()
                    ],
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}