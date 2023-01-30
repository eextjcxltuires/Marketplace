import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'components/home_category_list.dart';
import 'components/home_description_panel.dart';
import 'components/home_image_profile.dart';

import '../../widgets/header_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 35.h),

            // Header.
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: HeaderWidget(widget: HomeImageProfile()),
            ),
            SizedBox(height: 24.h),

            // Description Panel.
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: HomeDescriptionPanel(),
            ),
            SizedBox(height: 24.h),

            // Category List.
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: HomeCategoryList(),
            ),
            SizedBox(height: 24.h),
          ],
        ),
      ),
    );
  }
}
