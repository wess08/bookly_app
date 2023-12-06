import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_book_details_app_bar.dart';
import 'custom_book_image.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: SafeArea(
        child: Column(
          children: [
            const CustomBookDetailsAppBar(),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 70.w),
                child: const CustomBookImage())
          ],
        ),
      ),
    );
  }
}
