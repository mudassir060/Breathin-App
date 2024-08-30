import 'package:flutter/material.dart';

class ResponsiveGridView extends StatelessWidget {
  final int itemCount;
  final IndexedWidgetBuilder itemBuilder;
  final double spacing;
  final double aspectRatio;

  const ResponsiveGridView({
    Key? key,
    required this.itemCount,
    required this.itemBuilder,
    this.spacing = 8.0, // Default spacing if none provided
    this.aspectRatio = 1.0, // Default aspect ratio if none provided
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final int crossAxisCount = _crossAxisCount(constraints.maxWidth);
        return GridView.builder(
          shrinkWrap: true,
          itemCount: itemCount,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            mainAxisSpacing: spacing,
            crossAxisSpacing: spacing,
            childAspectRatio: aspectRatio,
          ),
          itemBuilder: itemBuilder,
          padding: EdgeInsets.all(spacing),
        );
      },
    );
  }

  int _crossAxisCount(double width) {
    if (width > 1200) {
      return 5; // widescreen - 5 columns
    } else if (width > 900) {
      return 4; // large screen - 4 columns
    } else if (width > 600) {
      return 3; // small screen - 3 columns
    } else {
      return 2; // mobile - 2 columns
    }
  }
}
