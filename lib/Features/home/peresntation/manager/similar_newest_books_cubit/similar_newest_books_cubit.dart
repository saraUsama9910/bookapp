import 'package:bloc/bloc.dart';
import 'package:bookapp/Features/home/data/models/book_model/book_model.dart';
import 'package:bookapp/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similar_newest_books_state.dart';

class SimilarNewestBooksCubit extends Cubit<SimilarNewestBooksState> {
  SimilarNewestBooksCubit(this.homeRepo) : super(SimilarNewestBooksInitial());
   final HomeRepo homeRepo;
  Future<void> fetchSimilarNewestBooks({required String category}) async {
    emit(SimilarNewestBooksLoading());
    var result = await homeRepo.fetchSimilarNewestBooks(category: '');
    result.fold(ifLeft: (failure) {
      emit(SimilarNewestBooksFailure(failure.errMessage));
    }, ifRight: (books) {
      emit(SimilarNewestBooksSuccess(books));
    });
  }
}
