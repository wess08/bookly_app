import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../home/data/models/book_model/book_model.dart';
import '../../../../home/presentation/views/widgets/book_list_view_item.dart';

class SearchResultListView extends StatelessWidget {
  final List<BookModel> books;

  const SearchResultListView({Key? key, required this.books}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: books.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: index == 0
              ? EdgeInsets.only(left: 20.w, right: 20.w, bottom: 5.h)
              : EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
          child: BookListViewItem(
            book: books[index],
          ),
        );
      },
    );
  }
}
