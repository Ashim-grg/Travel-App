import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class PostBox extends StatefulWidget {
  const PostBox({super.key});

  @override
  State<PostBox> createState() => _PostBoxState();
}

class _PostBoxState extends State<PostBox> {
  bool _ispressed = false;
  void onpress(){
    setState(() {
      _ispressed = !_ispressed;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      width: 300,
      margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10), 
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
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
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset('assets/images/users/nepali.jpg',fit: BoxFit.cover,),
                  ),
                ),
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
            Text('Went to the Beach was Fun..',style: GoogleFonts.afacad(fontSize: 18,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),

           Container(
            height: 160,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.white
            ),
            child: Row(
              children: [
                Container(
                  height: 160,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/images/places/place1.png',
                    fit: BoxFit.cover,
                  ),
                ),
                ),
                SizedBox(width: 5,),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: AspectRatio(
                          aspectRatio: 2,
                          child: ClipRRect(  
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset('assets/images/places/place2.png', 
                            fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Expanded(
                        child: Stack(
                          children: [
                            ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'assets/images/places/place3.jpeg', 
                            fit: BoxFit.cover
                            ),
                          ),
                          Positioned.fill(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.black38,
                                borderRadius: BorderRadius.circular(12)
                              ),
                              child: Center(child: Text(
                                '+3',style: GoogleFonts.afacad(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),
                              ))
                            ),)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
           ),
            SizedBox(height: 10,),
            Row(
              children: [
                GestureDetector(
                  onTap: onpress,
                  child: Icon(Icons.favorite,color: _ispressed ? Colors.orange.shade700: Colors.black,size: 30,)
                ),
                  Text('100k',style: GoogleFonts.afacad(fontSize: 17,fontWeight: FontWeight.bold,),),
                  SizedBox(width: 10,),
                  GestureDetector(
                    onTap: (){}, 
                    child: Icon(LucideIcons.messageCircleMore,size: 30,)),
                  Text('23.1k',style: GoogleFonts.afacad(fontSize: 17,fontWeight: FontWeight.bold,),),

              ],
            )
          ],
        ),
      ),
    );
  }
}