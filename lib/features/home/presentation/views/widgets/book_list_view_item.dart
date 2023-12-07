import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/models/book_model/book_model.dart';
import 'book_rating.dart';
import 'custom_book_image.dart';

class BookListViewItem extends StatelessWidget {
  final BookModel book;
  const BookListViewItem({Key? key,required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView,extra: book);
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 116.h,
            width: 83.w,
            child:  CustomBookImage(
              imageUrl: book.volumeInfo.imageLinks == null ? "" :
            book.volumeInfo.imageLinks!.thumbnail ?? "",
            )
          ),
          SizedBox(
            width: 24.w,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  book.volumeInfo.title!,
                  maxLines: 2,
                  style: Styles.textStyle20.copyWith(fontFamily: kGtSectraFine,height: 1.h),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 8.h,
                ),
                Wrap(
                  runSpacing: 3.h,
                  children: book.volumeInfo.authors!.map<Widget>((e) => Text(
                    e,
                    maxLines: 1,
                    style: Styles.textStyle14.copyWith(height: 0.95.h),
                    overflow: TextOverflow.ellipsis,
                  ),).toList()
                ),
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  children: [
                    Text(
                      'Free',
                      style: Styles.textStyle20
                          .copyWith(fontWeight: FontWeight.bold,height: 0.95.h),
                    ),
                    const Spacer(),
                    BookRating(rating: book.volumeInfo.averageRating ?? 0,count: book.volumeInfo.ratingsCount  ?? 0,)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
