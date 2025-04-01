import 'package:flutter/material.dart';
import 'package:travel_app/locations/models/hotels.dart';
import '../components/hotel_box.dart';

class HotelsShowing extends StatefulWidget {
  const HotelsShowing({super.key});

  @override
  State<HotelsShowing> createState() => _HotelsShowingState();
}

class _HotelsShowingState extends State<HotelsShowing> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final hotel = Hotels.hotelsList[index];
                    return HotelBox(
                      hotelname:hotel.hotelname,
                      description:hotel.description,
                      price:hotel.price,
                      reviews:hotel.reviews.join(', '),
                      imagePath:hotel.imagePath,
                    );
                  },
                  childCount: 3, 
                ),
              ),
        ),
      ],
    );
  }
}