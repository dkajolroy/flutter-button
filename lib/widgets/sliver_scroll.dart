import 'package:flutter/material.dart';

class SliverScroll extends StatelessWidget {
  const SliverScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          // floating: true,
          expandedHeight: 200,
          // centerTitle: true,
          stretch: true,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: const Text("Sliver App Bar"),
            stretchModes: const [StretchMode.blurBackground],
            collapseMode: CollapseMode.parallax,
            background: Image.asset("images/wallpaper.webp"),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              // Build the list of items
              return ListTile(
                title: Text('Item $index'),
              );
            },
            childCount: 20, // Number of items in the list
          ),
        ),
      ],
    );
  }
}
