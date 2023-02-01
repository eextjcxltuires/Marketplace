import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

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
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Colors.black26),
                ),
                child: Hero(
                  tag: 1,
                  child: Image.asset(
                    'assets/images/image-1.jpeg',
                    height: 260.h,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailHeader extends StatelessWidget {
  const DetailHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back),
        ),
        SizedBox(width: 16.h),
        Text('Auctions', style: TextStyle(fontSize: 16.r, fontWeight: FontWeight.bold)),
        const Spacer(),
        Icon(Iconsax.heart5, color: Colors.red.shade400),
        SizedBox(width: 15.h),
        const Icon(Iconsax.menu_1),
      ],
    );
  }
}
