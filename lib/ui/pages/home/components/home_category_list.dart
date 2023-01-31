import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../animations/slide_animation.dart';

class HomeCategoryList extends StatelessWidget {
  const HomeCategoryList({Key? key}) : super(key: key);

  final List<String> category = const [
    'Trending',
    'Digital',
    'Collections',
    'Lands',
    'Real Estate',
  ];

  @override
  Widget build(BuildContext context) {
    return SlideAnimation(
      child: SizedBox(
        height: 28.h,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: category.length,
          itemBuilder: (context, index) {
            return Category(
              index: index,
              category: category,
            );
          },
        ),
      ),
    );
  }
}

class Category extends StatelessWidget {
  final int index;
  final List category;

  const Category({
    Key? key,
    required this.index,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        color: index == 0 ? Colors.black : null,
      ),
      padding: EdgeInsets.only(
        left: 22.w,
        right: index == 0 ? 22.w : 0,
      ),
      child: Center(
        child: Text(
          category[index],
          style: TextStyle(
            fontSize: 14.r,
            color: index == 0 ? Colors.white : Colors.black54,
            fontWeight: index == 0 ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
