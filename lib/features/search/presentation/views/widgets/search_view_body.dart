import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../view_models/search_result_books_cubit/search_result_books_cubit.dart';
import 'custom_search_text_field.dart';
import 'search_result_section.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  final TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
            child: CustomSearchTextField(
              controller: controller,
              onSubmitted: (value) {
                if (value.isNotEmpty) {
                  BlocProvider.of<SearchResultBooksCubit>(context)
                      .searchBooks(hint: value);
                }
                FocusManager.instance.primaryFocus?.unfocus();
              },
              onPressed: () {
                if (controller.text.trim().isNotEmpty) {
                  BlocProvider.of<SearchResultBooksCubit>(context)
                      .searchBooks(hint: controller.text.trim());
                }
                FocusManager.instance.primaryFocus?.unfocus();
              },
            ),
          ),
          const Expanded(child: SearchResultSection())
        ],
      ),
    );
  }
}
