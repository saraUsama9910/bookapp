import 'package:bookapp/Features/home/data/models/book_model/book_model.dart';
import 'package:bookapp/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookapp/Features/home/peresntation/manager/similar_newest_books_cubit/similar_newest_books_cubit.dart';
import 'package:bookapp/Features/home/peresntation/views/home_view.dart';
import 'package:bookapp/Features/home/peresntation/views/widgets/book_details_view.dart';
import 'package:bookapp/Features/search/peresntation/views/search_view.dart';
import 'package:bookapp/Features/splash/peresntation/views/splash_view.dart';
import 'package:bookapp/core/utils/service_locator.dart';
import 'package:cubit_form/cubit_form.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/SearchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarNewestBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
          child:  BookDetailsView(bookModel: state.extra as BookModel ,),
        ),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
