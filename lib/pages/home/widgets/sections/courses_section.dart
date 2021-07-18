import 'package:flutter/material.dart';
import 'package:responsive/pages/home/widgets/course_item.dart';

import '../../../../breakpoints.dart';

class CoursesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constrains) {
        return GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(
              vertical: 16,
              horizontal: constrains.maxWidth >= tabletBreakpoint ? 0 : 16),
          shrinkWrap: true,
          itemCount: 20,
          itemBuilder: (context, index) {
            return CourseItem();
          },
        );
      },
    );
  }
}
