import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'components/detail_description_section.dart';
import 'components/detail_header.dart';
import 'components/detail_image.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 50.h),

              // Header Page.
              const DetailHeader(),
              SizedBox(height: 30.h),

              // Image.
              const DetailImage(),
              SizedBox(height: 24.h),

              // Description.
              const DetailDescriptionSection(),
            ],
          ),
        ),
      ),
    );
  }
}
