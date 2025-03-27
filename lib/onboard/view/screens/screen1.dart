import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
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
              height: size.height * 0.73,
              width: size.width,
              child: Image.asset(
                'assets/images/onboardimages/onboard1.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top:size.height * 0.75 - 300,
            left: 0,
            right: 0,
            child: Container(
              height: 300,
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
                  ]),
              ),
            )),
          Positioned(
            top: size.height * 0.68,
            left: 0,
            right: 0,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Let's get to know you \n Better!",
                  style: GoogleFonts.afacad(fontSize: 35,fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            )),
           Positioned(
            top: size.height * 0.8,
            left: 0,
            right: 0,
            child: Text(
              'Explore Locations all around the globe as \nper your preferences',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
              ),
           ),
           ),

            Positioned(
              top: size.height * 0.8 + 70,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GestureDetector(
                  onTap: () {
                    context.go('/onboard');
                  },
                  child: Container(
                    height: 60,
                    width: size.width * 0.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.orange.shade700
                    ),
                    child: Center(child: Text(
                      'Get Started',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                      ),
                    ),
                  ),
                ),
              )
            )
        ],
      )
    );
  }
}