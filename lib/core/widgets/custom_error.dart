import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/styles.dart';

class CustomError extends StatelessWidget {
  final String errMessage;

  const CustomError({super.key, required this.errMessage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Text(
        errMessage,
        style: Styles.textStyle18,
      ),
    );
  }
}
