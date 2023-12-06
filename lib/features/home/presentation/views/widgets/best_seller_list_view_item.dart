import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 125.h,
            child: AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://4.bp.blogspot.com/-ze3sNcZHocg/V8G6hje4UXI/AAAAAAAAyMA/dMF1qC7m7hYKlBm3FLBIEqEU_yRZZ5JpQCLcB/s640/The-Jungle-Book-2016%2Bcover.jpg"))),
              ),
            ),
          ),
          SizedBox(
            width: 20.w,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Harry Potter and the Goblet of Fire',
                  maxLines: 2,
                  style: Styles.textStyle20.copyWith(fontFamily: kGtSectraFine),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 3.h,
                ),
                Text(
                  "J.K. Rowling",
                  maxLines: 1,
                  style: Styles.textStyle14,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 3.h,
                ),
                Row(
                  children: [
                    Text(
                      '19.99 €',
                      style: Styles.textStyle20
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    const BookRating()
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
