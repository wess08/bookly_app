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
              child: const CustomBookImage(imageUrl: "https://images.unsplash.com/photo-1519682337058-a94d519337bc?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",),
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
