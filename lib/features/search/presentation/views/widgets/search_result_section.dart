import 'package:bookly/core/widgets/custom_error.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/features/search/presentation/view_models/search_result_books_cubit/search_result_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/styles.dart';
import 'search_result_list_view.dart';

class SearchResultSection extends StatelessWidget {
  const SearchResultSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchResultBooksCubit, SearchResultBooksState>(
        builder: (context, state) {
      if (state is SearchResultBooksSuccess) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                "Search Results",
                style: Styles.textStyle20
                    .copyWith(height: 1.h, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(child: SearchResultListView(books: state.books))
          ],
        );
      } else if (state is SearchResultBooksFailure) {
        return CustomError(errMessage: state.errMessage);
      } else if (state is SearchResultBooksLoading) {
        return const CustomLoadingIndicator();
      } else {
        return const SizedBox();
      }
    });
  }
}
