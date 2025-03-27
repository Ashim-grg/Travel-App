import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:travel_app/onboard/view/screens/screen2.dart';
import 'package:travel_app/onboard/view/screens/screen3.dart';
import 'package:travel_app/onboard/view/screens/screen4.dart';
import 'package:travel_app/onboard/view/screens/screen5.dart';

class OnboardPage extends StatefulWidget {
  const OnboardPage({super.key});

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  PageController pageController = PageController();
  bool _onlastPage = false;
  int currentpage = 0;
  
  List<bool> categorySelected = List.generate(6, (_) => false);

  void onCategorySelected(List<bool> selectedCategories) {
    setState(() {
      categorySelected = selectedCategories; 
    });
    print("Updated Categories: $categorySelected");
    
  }

  void nextPage() {
    if (_onlastPage) {
      context.go('/home');
    } else {
      print("Category Selected: $categorySelected");
      if (categorySelected.contains(true)) {
        pageController.nextPage(
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      } else {
        _showSelectionDialog(); 
      }
    }
  }

  void _showSelectionDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Selection Required"),
          content: const Text("Please select at least one category to proceed."),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close dialog
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
  final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Scaffold(
        body: Stack(
          children: [
            PageView(
              controller: pageController,
              onPageChanged: (index){
                setState(() {
                  currentpage =index;
                  _onlastPage = (index == 3);
                  categorySelected = List.generate(6, (_) => false); 
                });
              },
              children: [
                Screen2(onCategorySelected: onCategorySelected,),
                Screen3(onCategorySelected: onCategorySelected,),
                Screen4(onCategorySelected: onCategorySelected,),
                Screen5(onCategorySelected: onCategorySelected,)
              ],
            ),
            Positioned(
              top: size.height * 0.85 + 40,
              left: 0,
              right: 10,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('${currentpage + 1} of 4 Steps',style: GoogleFonts.afacad(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 16
                    )),
                    GestureDetector(
                      onTap: nextPage,
                      child: Container(
                        height: 40,
                        width: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.orange.shade700
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(width: 10,),
                            Text( _onlastPage ? 'Complete' : 'Next',
                            style: TextStyle(
                              fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white
                            ),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Icon(LucideIcons.chevronRight, size: 20, color: Colors.white),
                                    Transform.translate(
                                      offset: Offset(-8, 0),
                                      child: Icon(
                                        LucideIcons.chevronRight, size: 20, 
                                        color: Colors.white)),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ),

          ],
        ),
      ),
    );
  }
}