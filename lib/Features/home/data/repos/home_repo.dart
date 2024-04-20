import 'package:bookapp/Features/home/data/models/book_model/book_model.dart';
import 'package:bookapp/core/errors/failures.dart';
import 'package:dart_either/dart_either.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> featchBestSellerBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks();
}
