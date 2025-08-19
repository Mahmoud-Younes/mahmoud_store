import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mahmoud_store/core/app/connectivity_controller.dart';
import 'package:mahmoud_store/core/app/env.variables.dart';
import 'package:mahmoud_store/core/common/screens/no_network_screen.dart';
import 'package:mahmoud_store/core/language/app_localizations_setup.dart';
import 'package:mahmoud_store/core/routes/app_routes.dart';
import 'package:mahmoud_store/core/style/theme/app_theme.dart';

class MahmoudStore extends StatelessWidget {
  const MahmoudStore({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (_, value, _) {
        if (value) {
          return ScreenUtilInit(
            designSize: const Size(375, 812),
            minTextAdapt: true,
            child: MaterialApp(
              title: 'Asroo Store',
              debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
              theme: themeDark(),
              //TODO: Change to themeLight() for light mode
              locale: const Locale(
                'ar',
              ), //TODO: Change to Locale('en') for English
              supportedLocales: AppLocalizationsSetup.supportedLocales,
              localizationsDelegates:
                  AppLocalizationsSetup.localizationsDelegates,
              localeResolutionCallback:
                  AppLocalizationsSetup.localeResolutionCallback,
              builder: (context, widget) {
                return GestureDetector(
                  onTap: () {
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  child: Scaffold(
                    body: Builder(
                      builder: (context) {
                        ConnectivityController.instance.init();
                        return widget!;
                      },
                    ),
                  ),
                );
              },
              onGenerateRoute: AppRoutes.onGenerateRoute,
              initialRoute: AppRoutes.testOne,
            ),
          );
        } else {
          return MaterialApp(
            title: 'No NetWork ',
            debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
            home: const NoNetWorkScreen(),
          );
        }
      },
    );
  }
}
