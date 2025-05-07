import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mahmoud_store/core/app/connectivity_controller.dart';
import 'package:mahmoud_store/core/app/env_variable.dart';
import 'package:mahmoud_store/core/common/no_network_screen.dart';
import 'package:mahmoud_store/core/language/app_localizations_setup.dart';
import 'package:mahmoud_store/core/routes/app_routes.dart';

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
              debugShowCheckedModeBanner: EnvVariable.instance.debugMode,

              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              ),
              locale: const Locale('ar'), //TODO: change locale with cubit
              localizationsDelegates:
                  AppLocalizationsSetup.localizationsDelegates,
              supportedLocales: AppLocalizationsSetup.supportedLocales,
              onGenerateRoute: AppRoutes.onGenerateRoute,
              initialRoute: AppRoutes.login,
            ),
            builder: (context, widget) {
              return GestureDetector(
                //  onTap: () {
                //           FocusManager.instance.primaryFocus?.unfocus();
                //         },
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
