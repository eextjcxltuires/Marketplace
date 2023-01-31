import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../animations/page_transition.dart';
import '../../../animations/slide_animation.dart';
import '../../../widgets/event_state_widget.dart';
import '../../detail/detail_page.dart';

class HomeContentList extends StatelessWidget {
  final PageController pageController;

  const HomeContentList({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  // Navigation: The function responsible for navigating to the Detail Page.
  void detail(context) => Navigator.push(
        context,
        PageTransition(child: const DetailPage(), type: PageTransitionType.fadeIn),
      );

  @override
  Widget build(BuildContext context) {
    return SlideAnimation(
      begin: Offset(400.w, 0),
      child: SizedBox(
        height: 500.0,
        child: PageView.builder(
          controller: pageController,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => detail(context),
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 0, 20.w, 0),
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Colors.black26),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.0),
                      child: const ContentHeader(),
                    ),
                    Expanded(
                      child: ContentImage(index: index),
                    ),
                    SizedBox(height: 12.h),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.0),
                      child: const ContentDescription(),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class ContentHeader extends StatelessWidget {
  const ContentHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text('A. ', style: TextStyle(fontSize: 20.r, fontWeight: FontWeight.bold)),
        SizedBox(width: 12.w),
        Text('DAY 74', style: TextStyle(fontSize: 14.r)),
        const Spacer(),
        Text('@pashabetenya', style: TextStyle(fontSize: 14.r, color: Colors.black54)),
      ],
    );
  }
}

class ContentImage extends StatelessWidget {
  final int index;

  const ContentImage({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: '$index',
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              index % 2 == 0 ? 'assets/images/image-0.jpg' : 'assets/images/image-1.jpeg',
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class ContentDescription extends StatelessWidget {
  const ContentDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const <Widget>[
        EventStateWidget(title: '20h: 25m: 08s', subtitle: 'Remaining Time'),
        EventStateWidget(title: '15.97 ETH', subtitle: 'Highest Bid'),
      ],
    );
  }
}
