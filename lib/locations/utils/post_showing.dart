import 'package:flutter/material.dart';

import '../../home/components/post_box.dart';

class PostShowing extends StatefulWidget {
  const PostShowing({super.key});

  @override
  State<PostShowing> createState() => _PostShowingState();
}

class _PostShowingState extends State<PostShowing> {
  ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: _scrollController,
      slivers: [
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
    );
  }
}