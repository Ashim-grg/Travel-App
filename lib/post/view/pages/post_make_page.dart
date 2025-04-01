import 'package:flutter/material.dart';

class PostMakePage extends StatefulWidget {
  const PostMakePage({super.key});

  @override
  State<PostMakePage> createState() => _PostMakePageState();
}

class _PostMakePageState extends State<PostMakePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post Make Page'),
      ),
    );
  }
}