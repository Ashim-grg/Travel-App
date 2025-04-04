import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/onboard/components/category_box.dart';
import 'package:travel_app/onboard/model/category.dart';

class Screen4 extends StatefulWidget {
  final Function(List<bool>) onCategorySelected; 

  const Screen4({super.key, required this.onCategorySelected});

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  List<bool> categorySelected = List.generate(Category.weatherList.length, (index) => false); // Local category selection

  void onCategorySelectedHandler(int index, bool selected) {
    setState(() {
      categorySelected[index] = selected; 
    });
    print("Updated category selection: $categorySelected");
    widget.onCategorySelected(categorySelected); 
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: SizedBox(
              height: size.height * 0.45,
              width: size.width,
              child: Image.asset(
                'assets/images/onboardimages/onboard4.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.45 - 200,
            left: 0,
            right: 0,
            child: Container(
              height: 200,
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
            top: size.height * 0.42,
            left: 0,
            right: 0,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "What kind of weathers \nyou prefer?",
                  style: GoogleFonts.afacad(fontSize: 35, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.5 + 50,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: 200,
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3, // Adjust number of categories based on your data
                        itemBuilder: (context, index) {
                          final category = Category.weatherList[index]; // Assuming weatherList exists in your model
                          return CategoryBox(
                            isSelected: categorySelected[index],
                            category: category.category,
                            iconname: category.iconPath,
                            oncategorySelected: (selected) {
                              onCategorySelectedHandler(index, selected);
                            },
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 55),
                      child: SizedBox(
                        height: 50,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: Category.weatherList.length - 3, // Adjust if more categories
                          itemBuilder: (context, index) {
                            final category = Category.weatherList[index + 3]; // Adjust index for remaining categories
                            return CategoryBox(
                              isSelected: categorySelected[index + 3],
                              category: category.category,
                              iconname: category.iconPath,
                              oncategorySelected: (selected) {
                                onCategorySelectedHandler(index + 3, selected);
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
