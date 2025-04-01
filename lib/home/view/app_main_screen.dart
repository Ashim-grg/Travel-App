import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:travel_app/home/components/category_box.dart';
import 'package:travel_app/home/components/post_box.dart';
import 'package:travel_app/home/model/places.dart';

import '../components/places_view.dart';
import '../model/categories.dart';

class AppMainScreen extends StatefulWidget {
  const AppMainScreen({super.key});

  @override
  State<AppMainScreen> createState() => _AppMainScreenState();
}

class _AppMainScreenState extends State<AppMainScreen> {
  bool _isRefreshing = false;

  final ScrollController _scrollController = ScrollController();

  Future<void> _onRefresh() async {
    setState(() {
      _isRefreshing = true;
    });

    await Future.delayed(Duration(seconds: 2));
    setState(() {
      _isRefreshing = false;
    });
    context.go('/home');
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.notifications)),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: _onRefresh,
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            if (_isRefreshing)
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      CircularProgressIndicator(strokeWidth: 3),
                      SizedBox(height: 8),
                    ],
                  ),
                ),
              ),
            
            // Search bar
            SliverToBoxAdapter(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                margin: const EdgeInsets.symmetric(horizontal: 20),
                height: 45,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(width: 0.8, color: Colors.grey.shade400),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    const Icon(LucideIcons.search, size: 20),
                    const SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        style: GoogleFonts.afacad(fontSize: 18),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(0),
                          isDense: true,
                          border: InputBorder.none,
                          hintText: 'Search...',
                          hintStyle: GoogleFonts.afacad(fontSize: 14, color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 25),
            ),
            
            // Places List
            SliverToBoxAdapter(
              child: SizedBox(
                height: 150,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Places.travelPlaces.length,
                    itemBuilder: (context, index) {
                      final place = Places.travelPlaces[index];
                      return PlacesView(places: place);
                    },
                  ),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 15),
            ),

            // Categories List
            SliverToBoxAdapter(
              child: SizedBox(
                height: 35,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Categories.categories.length,
                    itemBuilder: (context, index) {
                      final category = Categories.categories[index];
                      return CategorySelectBox(category: category);
                    },
                  ),
                ),
              ),
            ),

            const SliverToBoxAdapter(
              child: SizedBox(height: 20),
            ),

            // Post List
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return PostBox();
                  },
                  childCount: 3, 
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
