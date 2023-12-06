import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'books_details_section.dart';
import 'custom_book_details_app_bar.dart';
import 'custom_book_image.dart';
import 'similar_books_section.dart';

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
            SizedBox(
              height: 262.h,
              width: 192.w,
              child: const CustomBookImage(),
            ),
            const BookDetailsSection(),
            SizedBox(
              height: 50.h,
            ),
            const SimilarBooksSection()
          ],
        ),
      ),
    );
  }
}
