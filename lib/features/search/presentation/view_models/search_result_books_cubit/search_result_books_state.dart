part of 'search_result_books_cubit.dart';

@immutable
abstract class SearchResultBooksState {}

class SearchResultBooksInitial extends SearchResultBooksState {}

class SearchResultBooksLoading extends SearchResultBooksState {}

class SearchResultBooksFailure extends SearchResultBooksState {
  final String errMessage;

  SearchResultBooksFailure({required this.errMessage});
}

class SearchResultBooksSuccess extends SearchResultBooksState {
  final List<BookModel> books;

  SearchResultBooksSuccess({required this.books});
}
