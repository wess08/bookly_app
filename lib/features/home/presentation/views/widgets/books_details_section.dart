import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/styles.dart';
import '../../../data/models/book_model/book_model.dart';
import 'book_rating.dart';
import 'books_action.dart';

class BookDetailsSection extends StatelessWidget {
  final BookModel book;

  const BookDetailsSection({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 25.5.h,
        ),
        Text(book.volumeInfo.title!,
            textAlign: TextAlign.center,
            style: Styles.textStyle30.copyWith(
              height: 1.h,
            )),
        SizedBox(
          height: 20.h,
        ),
        Column(
          children: book.volumeInfo.authors!
              .map<Widget>(
                (e) => Text(
                  e,
                  textAlign: TextAlign.center,
                  style: Styles.textStyle18.copyWith(
                      height: 0.93.h,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w400),
                ),
              )
              .toList(),
        ),
        SizedBox(
          height: 19.5.h,
        ),
        BookRating(
            rating: book.volumeInfo.averageRating ?? 0,
            count: book.volumeInfo.ratingsCount ?? 0,
            mainAxisAlignment: MainAxisAlignment.center),
        SizedBox(
          height: 41.h,
        ),
        BooksAction(
          book: book,
        ),
      ],
    );
  }
}
