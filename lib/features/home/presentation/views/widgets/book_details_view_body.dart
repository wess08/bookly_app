import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'books_action.dart';
import 'custom_book_details_app_bar.dart';
import 'custom_book_image.dart';
import 'similar_books_list_view.dart';

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
            SizedBox(
              height: 25.5.h,
            ),
            Text("The Jungle Book",
                style: Styles.textStyle30.copyWith(height: 0.93.h)),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Rudyard Kipling",
              style: Styles.textStyle18.copyWith(
                  height: 0.93.h,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 19.5.h,
            ),
            const BookRating(mainAxisAlignment: MainAxisAlignment.center),
            SizedBox(
              height: 41.h,
            ),
            const BooksAction(),
            SizedBox(
              height: 50.h,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "You can also like",
                style: Styles.textStyle14
                    .copyWith(height: 1.h, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            const SimilarBooksListView(),
          ],
        ),
      ),
    );
  }
}
