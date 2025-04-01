import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:travel_app/locations/utils/extra_info.dart';
import 'package:travel_app/locations/utils/hotels_showing.dart';
import 'package:travel_app/locations/utils/post_showing.dart';

class LocationDetailPage extends StatefulWidget {
  final String? imagePath;
  final String? placename;
  final String? description;
  const LocationDetailPage({super.key,this.imagePath,this.placename,this.description});

  @override
  State<LocationDetailPage> createState() => _LocationDetailPageState();
}

class _LocationDetailPageState extends State<LocationDetailPage> {
  int _selectedIndex = 2; 
  final List<String> options = ["POSTS", "HOTELS", "EXTRA INFO"];  

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    String imageshow = widget.imagePath ?? 'assets/images/places/defaultimage.jpg';
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: height,
        width: width,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: SizedBox(
                height: height*0.4,
                width: width,
                child: Image.asset(
                  imageshow,
                  fit: BoxFit.cover,
                  ),
              )),
              Positioned(
                top: height * 0.4 - 150,
                left: 0,
                right: 0,
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.white,
                        Color.fromRGBO(255, 255, 255, 0.95),
                        Color.fromRGBO(255, 255, 255, 0.8),
                        Color.fromRGBO(255, 255, 255, 0.5),
                        Color.fromRGBO(255, 255, 255, 0.2),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
              ),

              Positioned(
              top: 60,
              left: 20,
              child: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 3),
                        blurRadius: 2,
                        spreadRadius: 2,
                        color: Colors.grey
                      )
                    ]
                  ),
                  child: Icon(
                    LucideIcons.arrowLeft,color: Colors.black,
                    ),
                  ),
              ),
              ),
              Positioned(
                top: height * 0.4 - 40,
                left: 0,
                right: 0,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      widget.placename ?? 'No name',
                      style: GoogleFonts.afacad(
                        fontSize: 27,fontWeight: FontWeight.bold,color: Colors.black
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            Positioned.fill(
              top: height * 0.4 +10,
              left: 0,
              right: 0,
              child: Container(
                height: 60,
                width: width , 
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Text(
                  widget.description ?? 'Home',
                  maxLines: 3,
                  style: GoogleFonts.afacad(
                    fontSize: 15,
                    color: Colors.black,
                    height: 1.2,
                  ),
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,  
                  textDirection:TextDirection.ltr,
                ),
              ),
            ),
            Positioned(
              top: height * 0.5-10,
              right: 0,
              left: 0,
              child: SizedBox(
                height: height * 0.3,
                width: width,
                child: Column(
                  children: [
                    Divider(color: Colors.grey,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('#SightSeeing',
                        style: GoogleFonts.afacad(
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                        ),
                        ),
                        SizedBox(width: 8,),
                        Container(
                          height: 25,
                          width: 2,
                          decoration: BoxDecoration(
                            color: Colors.grey
                          ),
                        ),
                        SizedBox(width: 8,),
                        Text('Evening Time',style: GoogleFonts.afacad(
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                        ),),
                        SizedBox(width: 8,),
                        Container(
                          height: 25,
                          width: 2,
                          decoration: BoxDecoration(
                            color: Colors.grey
                          ),
                        ),
                        SizedBox(width: 8,),
                        Text('Nprs.300',style: GoogleFonts.afacad(
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                        ),),
                      ],
                    ),
                    Divider(color: Colors.grey,),
                    SizedBox(height: 8,),
                    LayoutBuilder(
                      builder: (context,constraints){
                        double screenWidth = constraints.maxWidth;
                        double tabWidth = screenWidth / 3;
                        return Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(width: 2,),
                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  _selectedIndex = 0;
                                });
                              },
                              child: Text('POSTS',style: GoogleFonts.afacad(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: _selectedIndex == 0 ? Colors.orange : Colors.grey,
                              ),),
                            ),
                            SizedBox(width: 15,),
                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  _selectedIndex = 1;
                                });
                              },
                              child: Text('HOTELS',style: GoogleFonts.afacad(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: _selectedIndex == 1 ? Colors.orange : Colors.grey,
                              ),),
                            ),
                            SizedBox(width: 2,),
                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  _selectedIndex = 2;
                                });
                              },
                              child: Text('EXTRA INFO',style: GoogleFonts.afacad(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: _selectedIndex == 2 ? Colors.orange : Colors.grey,
                              ),),
                            ),
                          ],
                          ),
                          AnimatedPositioned(
                            left: _selectedIndex * tabWidth,
                            bottom: -10,
                            duration: Duration(milliseconds: 300),
                            child: Container(
                              width: tabWidth,
                              height: 4,
                              color: Colors.orange,
                          ), 
                          ),
                        ],
                      );
                      },
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: height * 0.6+20,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                width: width,
                decoration: BoxDecoration(
                  color: Colors.white
                ),
                child: Column(
                  children: [
                    Expanded(
                    child: _selectedIndex ==0 ?
                    PostShowing():
                    _selectedIndex ==1 ? HotelsShowing()
                    :
                  ExtraInfo()
                    ,
                  ),
                  ],
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}