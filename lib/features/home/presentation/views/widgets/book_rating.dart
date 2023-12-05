import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: const Color(0xFFFFDD4F),
          size: 16.r,
        ),
        SizedBox(
          width: 7.w,
        ),
        Text(
          '4.8',
          style: Styles.textStyle16,
        ),
        SizedBox(
          width: 5.w,
        ),
        Text(
          '(2390)',
          style: Styles.textStyle14.copyWith(color: const Color(0xFF707070)),
        ),
      ],
    );
  }
}
