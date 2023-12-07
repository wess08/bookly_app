import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/data/models/book_model/book_model.dart';
import '../../features/home/data/repos/home_repo_impl.dart';
import '../../features/home/presentation/view_models/similar_books/similar_books_cubit.dart';
import '../../features/home/presentation/views/book_details_view.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/search/presentation/views/search_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';
import 'service_locator.dart';

abstract class AppRouter {
  static const kSplashView = '/';
  static const kHomeView = "/homeView";
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kSplashView,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => BlocProvider(
            create: (context) =>
                SimilarBooksCubit(homeRepo: getIt.get<HomeRepoImpl>()),
            child: BookDetailsView(book: state.extra as BookModel,)),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
