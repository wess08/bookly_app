import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_book_image.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 124.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
                padding: index == 0
                    ? EdgeInsets.only(right: 4.w)
                    : EdgeInsets.symmetric(horizontal: 4.w),
                child: SizedBox(
                    width: 80.w,
                    height: 128.h,
                    child: const CustomBookImage()));
          }),
    );
  }
}