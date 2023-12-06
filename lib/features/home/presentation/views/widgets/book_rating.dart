import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;

  const BookRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: const Color(0xFFFFDD4F),
          size: 14.r,
        ),
        SizedBox(
          width: 7.w,
        ),
        Text(
          '4.8',
          style: Styles.textStyle16.copyWith(height: 1.h),
        ),
        SizedBox(
          width: 5.w,
        ),
        Text(
          '(2390)',
          style: Styles.textStyle14.copyWith(color: const Color(0xFF707070),height: 1.h),
        ),
      ],
    );
  }
}
