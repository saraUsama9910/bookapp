import 'package:bookapp/Features/home/data/models/book_model/book_model.dart';
import 'package:bookapp/Features/home/data/repos/home_repo.dart';
import 'package:bookapp/core/errors/failures.dart';
import 'package:bookapp/core/utils/api_service.dart';
import 'package:dart_either/dart_either.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> featchNewestBooks() async {
    try {
      var date = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest&q=subject:novels');
      List<BookModel> books = [];
      for (var item in date['items']) {
        books.add(
          BookModel.fromJson(item),
        );
      }
      return Right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return Left(
          ServerFailure.fromDioException(e),
        );
      }
      return Left(e.toString() as Failure);
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var date = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=movies');
      List<BookModel> books = [];
      for (var item in date['items']) {
        books.add(
          BookModel.fromJson(item),
        );
      }
      return Right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return Left(
          ServerFailure.fromDioException(e),
        );
      }
      return Left(e.toString() as Failure);
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks() async {
    try {
      var date = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest&q=subject:programming');
      List<BookModel> books = [];
      for (var item in date['items']) {
        books.add(
          BookModel.fromJson(item),
        );
      }
      return Right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return Left(
          ServerFailure.fromDioException(e),
        );
      }
      return Left(e.toString() as Failure);
    }
  }
}
