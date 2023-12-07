import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../models/book_model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();

  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();

  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String category});

  Future<Either<Failure, List<BookModel>>> searchBooks(
      {required String hint});
}
