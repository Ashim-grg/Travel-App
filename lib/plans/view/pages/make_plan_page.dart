import 'package:flutter/material.dart';

class MakePlanPage extends StatefulWidget {
  const MakePlanPage({super.key});

  @override
  State<MakePlanPage> createState() => _MakePlanPageState();
}

class _MakePlanPageState extends State<MakePlanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title: Text('Make Plan'),
     ),
    );
  }
}