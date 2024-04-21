import 'package:bookapp/Features/home/data/models/book_model/book_model.dart';
import 'package:bookapp/Features/home/data/repos/home_repo.dart';
import 'package:bookapp/core/errors/failures.dart';
import 'package:bookapp/core/utils/api_service.dart';
import 'package:dart_either/src/dart_either.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl({required this.apiService});
  @override
  Future<Either<Failure, List<BookModel>>> featchBestSellerBooks() {
    // TODO: implement featchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks() {
    // TODO: implement fetchSimilarBooks
    throw UnimplementedError();
  }
}
