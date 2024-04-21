import 'package:bloc/bloc.dart';
import 'package:bookapp/Features/home/data/models/book_model/book_model.dart';
import 'package:bookapp/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(ifLeft: (failure) {
      emit(NewestBooksFailure(failure.errMessage));
    }, ifRight: (books) {
      emit(NewestBooksSuccess(books));
    });
  }
}
