import 'package:bookapp/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookapp/Features/home/peresntation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookapp/Features/home/peresntation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookapp/Features/splash/peresntation/views/splash_view.dart';
import 'package:bookapp/constants.dart';
import 'package:bookapp/core/utils/app_router.dart';
import 'package:bookapp/core/utils/service_locator.dart';
import 'package:cubit_form/cubit_form.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  setupServiceLocator();
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
        ),
      ],
      child: MaterialApp.router(
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark()
              .copyWith(scaffoldBackgroundColor: kPrimaryColor)),
    );
  }
}

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
  ],
);
