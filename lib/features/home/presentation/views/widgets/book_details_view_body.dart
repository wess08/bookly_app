import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'book_rating.dart';
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
                child: const CustomBookImage()),
            SizedBox(
              height: 15.h,
            ),
            Text(
              "The Jungle Book",
              style: Styles.textStyle30,
            ),
            SizedBox(
              height: 7.h,
            ),
            Text(
              "Rudyard Kipling",
              style: Styles.textStyle18.copyWith(
                  fontStyle: FontStyle.italic, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 7.h,
            ),
            const BookRating(mainAxisAlignment: MainAxisAlignment.center),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }
}
