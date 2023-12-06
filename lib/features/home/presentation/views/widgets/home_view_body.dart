import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/styles.dart';
import 'best_seller_list_view.dart';
import 'custom_app_bar.dart';
import 'featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(),
                const FeaturedBooksListView(),
                SizedBox(
                  height: 49.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Text(
                    "Best Seller",
                    style: Styles.textStyle20.copyWith(height: 1.h),
                  ),
                ),
                SizedBox(
                  height: 23.h,
                ),
              ],
            ),
          ),
          const SliverToBoxAdapter(
            child: BestSellerListView(),
          )
        ],
      ),
    );
  }
}
