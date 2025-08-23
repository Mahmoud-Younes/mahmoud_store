
import 'package:flutter/material.dart';
import 'package:mahmoud_store/core/common/screens/under_build_screen.dart';
import 'package:mahmoud_store/core/routes/base_router.dart';
import 'package:mahmoud_store/features/auth/presentation/screens/login_screens.dart';
import 'package:mahmoud_store/features/auth/presentation/screens/sign_up_screen.dart';

class AppRoutes {
  static const String login = 'login';
  static const String signUp = 'signUp';

  static Route<void> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case login:
        return BaseRoute(page: const LoginScreen());
      case signUp:
        return BaseRoute(page: const SignUpScreen());

      default:
        return BaseRoute(page: const PageUnderBuildScreen());
    }
  }
}