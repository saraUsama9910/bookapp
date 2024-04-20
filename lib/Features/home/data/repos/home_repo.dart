import 'package:bookapp/Features/home/data/models/book_model/book_model.dart';

abstract class HomeRepo {
  Future<List<BookModel>> featchBestSellerBooks();
  Future<List<BookModel>> fetchFeaturedBooks();
  Future<List<BookModel>> fetchSimilarBooks();
}
