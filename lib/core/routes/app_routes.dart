
import 'package:flutter/material.dart';
import 'package:mahmoud_store/core/common/screens/under_build_screen.dart';
import 'package:mahmoud_store/core/routes/base_router.dart';
import 'package:mahmoud_store/test_one_screen.dart';
import 'package:mahmoud_store/test_two_screen.dart';

class AppRoutes {
  static const String testOne = 'testOne';
  static const String testTwo = 'testTwo';

  static Route<void> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case testOne:
        return BaseRoute(page: const TestOneScreen());
      case testTwo:
        return BaseRoute(page: const TestTwoScreen());

      default:
        return BaseRoute(page: const PageUnderBuildScreen());
    }
  }
}
