import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
            padding: index == 0
                ? EdgeInsets.only(left: 20.w, right: 20.w, bottom: 5.h)
                : EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
            child: const BestSellerListViewItem());
      },
    );
  }
}
