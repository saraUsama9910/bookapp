part of 'newest_books_cubit.dart';

sealed class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

final class NewestBooksInitial extends NewestBooksState {}

final class NewestBooksLoading extends NewestBooksState {}

final class NewestBooksFailure extends NewestBooksState {
  final String errMessage;
  const NewestBooksFailure(this.errMessage);
}

final class FeaturedBooksSuccess extends NewestBooksState {
  final List<BookModel> books;
  const FeaturedBooksSuccess(this.books);
}