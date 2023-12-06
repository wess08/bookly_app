import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'books_action.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
      ],
    );
  }
}