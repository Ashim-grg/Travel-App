import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_app/home/view/home_page.dart';
import 'package:travel_app/onboard/view/pages/onboard_page.dart';
import 'package:travel_app/onboard/view/screens/screen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouter router = GoRouter(
      initialLocation: '/onboard',
      routes: [
        GoRoute(
          path: '/onboard',
          builder: (context,state)=> OnboardPage(),
        ),
        GoRoute(
          path: '/screen1',
          builder: (context,state)=> Screen1(),
        ),
        GoRoute(
          path: '/home',
          builder: (context,state)=> HomePage(),
        ),
      ]
    );
    return MaterialApp.router(
      title: 'Travel App',
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
  
}