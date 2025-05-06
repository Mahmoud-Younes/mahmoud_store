import 'package:flutter/material.dart';
import 'package:mahmoud_store/core/common/under_build_screen.dart';
import 'package:mahmoud_store/core/routes/base_routes.dart';
import 'package:mahmoud_store/presentation/screens/login_screen.dart';
import 'package:mahmoud_store/presentation/screens/sign_up_screen.dart';

class AppRoutes {
  static const String login = 'login';
  static const String signUp = 'signUp';
  static const String homeAdmin = 'homeAdmin';
  // static const String mainCustomer = 'main-screen';
  // static const String webview = 'webView';
  // static const String productDetails = 'product-details';
  // static const String category = 'catgeory';
  // static const String productsViewAll = 'productsViewAll';
  // static const String search = 'search';

  static Route<void> onGenerateRoute(RouteSettings settings) {
    // final args = settings.arguments;
    switch (settings.name) {
      case login:
        return BaseRoute(
          page: const LoginScreen(),
          // page: BlocProvider(
          //   create: (context) => sl<AuthBloc>(),
          //   child: const LoginScreen(),
          // ),
        );
      case signUp:
        return BaseRoute(
          page: const SignUpScreen(),
          // page: MultiBlocProvider(
          //   providers: [
          //     BlocProvider(
          //       create: (context) => sl<UploadImageCubit>(),
          //     ),
          //     BlocProvider(
          //       create: (context) => sl<AuthBloc>(),
          //     ),
          //   ],
          //   child: const SignUpScreen(),
          // ),
        );
      // case homeAdmin:
      //   return BaseRoute(page: const HomeAdminScreen());
      // case mainCustomer:
      //   return BaseRoute(
      //     page: BlocProvider(
      //       create: (context) => sl<MainCubit>(),
      //       child: const MainScreen(),
      //     ),
      //   );
      // case webview:
      //   return BaseRoute(
      //     page: CustomWebView(
      //       url: args! as String,
      //     ),
      //   );
      // case productDetails:
      //   return BaseRoute(
      //     page: ProductDetailsScreen(
      //       productId: args! as int,
      //     ),
      //   );
      // case category:
      //   return BaseRoute(
      //     page: CatgeoryScreen(
      //       categoryInfo: args! as ({int categoryId, String categoryName}),
      //     ),
      //   );
      // case productsViewAll:
      //   return BaseRoute(
      //     page: const ProductsViewAllScreen(),
      //   );
      // case search:
      //   return BaseRoute(
      //     page: const SearchScreen(),
      //   );

      default:
        return BaseRoute(page: const PageUnderBuildScreen());
    }
  }
}
