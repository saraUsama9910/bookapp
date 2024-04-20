import 'package:bookapp/Features/home/data/models/book_model/book_model.dart';
import 'package:dart_either/dart_either.dart';

abstract class HomeRepo {
  Future<Either> featchBestSellerBooks();
  Future<Either> fetchFeaturedBooks();
  Future<Either> fetchSimilarBooks();
}
