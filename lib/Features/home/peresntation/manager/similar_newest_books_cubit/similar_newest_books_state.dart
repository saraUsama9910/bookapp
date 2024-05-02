part of 'similar_newest_books_cubit.dart';

sealed class SimilarNewestBooksState extends Equatable {
  const SimilarNewestBooksState();

  @override
  List<Object> get props => [];
}

final class SimilarNewestBooksInitial extends SimilarNewestBooksState {}
final class SimilarNewestBooksLoading extends SimilarNewestBooksState {}

final class SimilarNewestBooksFailure extends SimilarNewestBooksState {
  final String errMessage;
  const SimilarNewestBooksFailure(this.errMessage);
}

final class SimilarNewestBooksSuccess extends SimilarNewestBooksState {
  final List<BookModel> books;
  const SimilarNewestBooksSuccess(this.books);
}
