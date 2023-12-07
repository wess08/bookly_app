import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'constants.dart';
import 'core/utils/app_router.dart';
import 'core/utils/service_locator.dart';
import 'features/home/data/repos/home_repo_impl.dart';
import 'features/search/presentation/view_models/featured_books_cubit/featured_books_cubit.dart';
import 'features/search/presentation/view_models/newest_books_cubit/newest_books_cubit.dart';

void main() {
  setup();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                FeaturedBooksCubit(homeRepo: getIt.get<HomeRepoImpl>())..fetchFeaturedBooks(),
          ),
          BlocProvider(
            create: (context) =>
                NewestBooksCubit(homeRepo: getIt.get<HomeRepoImpl>())..fetchNewestBooks(),
          ),
        ],
        child: MaterialApp.router(
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
          theme:
              ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
        ),
      ),
    );
  }
}
