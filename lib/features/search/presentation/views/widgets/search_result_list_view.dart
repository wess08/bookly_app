import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../home/presentation/views/widgets/book_list_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
