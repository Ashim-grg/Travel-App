import 'package:flutter/material.dart';
import 'package:travel_app/home/components/custom_nav_bar.dart';
import 'package:travel_app/home/model/menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int indexMenu = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: menu[indexMenu]['destination'] as Widget ,
      bottomNavigationBar: CustomNavBar(
        onItemSelected: (index){
          setState(() {
            indexMenu = index;
          });
        },
      ),
    );
  }
  
}