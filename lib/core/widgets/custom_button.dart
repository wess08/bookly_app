import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/styles.dart';

class CustomButton extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius borderRadius;
  final String textContent;
  final double fontSize;

  const CustomButton(
      {super.key,
      required this.backgroundColor,
      required this.textColor,
      required this.borderRadius,
      required this.textContent,
      required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.h,
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(borderRadius: borderRadius)),
          child: Text(
            textContent,
            style: Styles.textStyle18
                .copyWith(color: textColor, fontWeight: FontWeight.w500,fontSize: fontSize),
          )),
    );
  }
}
