import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/book_model/book_model.dart';
import '../../../data/repos/home_repo.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  final HomeRepo homeRepo;

  SimilarBooksCubit({required this.homeRepo}) : super(SimilarBooksInitial());

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category);

    result.fold(
      (failure) {
        emit(SimilarBooksFailure(errMessage: failure.errorMessage));
      },
      (books) {
        emit(SimilarBooksSuccess(books: books));
      },
    );
  }
}
