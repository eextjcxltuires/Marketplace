import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

import 'components/home_content_list.dart';
import 'components/home_category_list.dart';
import 'components/home_description_panel.dart';
import 'components/home_image_profile.dart';

import '../../widgets/bottom_icon_widget.dart';
import '../../widgets/header_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController(viewportFraction: 0.9);

    super.initState();
  }

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

            // Content List.
            HomeContentList(pageController: pageController),
          ],
        ),
      ),

      // Navigation.
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        iconSize: 22.r,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: BottomIconWidget(icon: Iconsax.home_15, isActive: true),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: BottomIconWidget(icon: Iconsax.discover_1),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: BottomIconWidget(icon: Iconsax.add_square),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: BottomIconWidget(icon: Iconsax.shop),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: BottomIconWidget(icon: Iconsax.wallet_3),
            label: 'Wallet',
          ),
        ],
      ),
    );
  }
}
