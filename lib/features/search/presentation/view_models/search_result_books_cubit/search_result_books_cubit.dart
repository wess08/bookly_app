import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../home/data/models/book_model/book_model.dart';
import '../../../../home/data/repos/home_repo.dart';

part 'search_result_books_state.dart';

class SearchResultBooksCubit extends Cubit<SearchResultBooksState> {
  final HomeRepo homeRepo;

  SearchResultBooksCubit({required this.homeRepo})
      : super(SearchResultBooksInitial());

  Future<void> searchBooks({required String hint}) async {
    emit(SearchResultBooksLoading());
    var result = await homeRepo.searchBooks(hint: hint);

    result.fold(
      (failure) {
        emit(SearchResultBooksFailure(errMessage: failure.errorMessage));
      },
      (books) {
        emit(SearchResultBooksSuccess(books: books));
      },
    );
  }
}
