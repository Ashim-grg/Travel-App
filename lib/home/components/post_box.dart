import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PostBox extends StatefulWidget {
  const PostBox({super.key});

  @override
  State<PostBox> createState() => _PostBoxState();
}

class _PostBoxState extends State<PostBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 300,
      margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10), 
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            //top
            color: Colors.grey.shade500,
            offset: Offset(0,5),
            spreadRadius: 3,
            blurRadius: 7,
          ),
        ],
        color: Colors.white
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Jane Cane',
                    style: GoogleFonts.afacad(fontSize: 16,fontWeight: FontWeight.bold),
                    ),
                    Text('Posted: 3 days ago',
                    style: GoogleFonts.afacad(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10,),
            Text('Went to the Beach was Fun..',style: GoogleFonts.afacad(fontSize: 18,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            

          ],
        ),
      ),
    );
  }
}