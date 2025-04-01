import 'package:flutter/material.dart';
import 'package:travel_app/home/model/menu.dart';

class CustomNavBar extends StatefulWidget {
  final Function(int) onItemSelected;
  const CustomNavBar({super.key,required this.onItemSelected});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int indexMenu = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
          height: 55,
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(color: Colors.transparent, offset: Offset(0, 20), blurRadius: 20)
            ],
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                  menu.length,
                  (index){
                    Map items = menu[index];
                    bool isActive = indexMenu == index;
                    return GestureDetector(
                      onTap: (){
                        setState(() {
                        indexMenu = index;
                        });
                        widget.onItemSelected(index);
                      },
                      child: SizedBox(
                            height: 35,
                            width: 35,
                            child:Icon(items['icon'],
                            color: isActive ? Colors.white: Colors.grey
                            ) ,
                          ),
                    );
                      } 
                      ),
                    ),

        ),
      );
  }
}