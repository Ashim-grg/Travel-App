import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:travel_app/home/components/category_box.dart';
import 'package:travel_app/home/components/post_box.dart';
import 'package:travel_app/home/model/places.dart';

import '../components/places_view.dart';
import '../model/categories.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Icon> icons = [
    Icon(LucideIcons.telescope,color: Colors.white,),
    Icon(LucideIcons.notebookPen,color: Colors.white,),
    Icon(LucideIcons.mapPinPlus,color: Colors.white,),
    Icon(LucideIcons.userRoundSearch,color: Colors.white,),
    Icon(LucideIcons.userRound,color: Colors.white,),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.grey.shade400,
                ),
              ),
              child: const Icon(Icons.notifications)
              ),
            ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: 45,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 0.8,
                  color: Colors.grey.shade400
                ),
                borderRadius: BorderRadius.circular(30)
              ),
              child: Row(
                children: [
                  const Icon(LucideIcons.search,size: 20,),
                  const SizedBox(width: 10,),
                  Expanded(child: TextField(
                    style: GoogleFonts.afacad(fontSize: 18),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(0),
                      isDense: true,
                      border: InputBorder.none,
                      hintText: 'Search...',
                      hintStyle: GoogleFonts.afacad(fontSize: 14,color: Colors.grey),
                    ),
                  )),
                ],
              )
            ),
            const SizedBox(height: 25,),
            SizedBox(
              height: 150,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Places.travelPlaces.length,
                  itemBuilder: (context,index){
                  final place = Places.travelPlaces[index];
                    return PlacesView(
                      places:place,
                    );
                  }
                  ),
              )
            ),
            const SizedBox(height: 15,),
            SizedBox(
              height: 35,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Categories.categories.length,
                  itemBuilder: (context,index){
                    final category = Categories.categories[index];
                    return CategorySelectBox(
                      category: category
                    );
                  },
                  ),
              ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(

                ),
                height: 500,
                width: 500,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 3,
                  itemBuilder: (context,index){
                    return PostBox();
                  },
                ),
              )
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          height: 55,
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 24,vertical: 20),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0, 20),
                blurRadius: 20
              )
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              icons.length, 
              (index)=>SizedBox(
                height: 35,
                width: 35,
                child: icons[index],
              )
            )
          ),
        ),
      ),
    );
  }
}