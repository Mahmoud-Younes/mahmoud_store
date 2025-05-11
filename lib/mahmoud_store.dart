import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mahmoud_store/core/app/connectivity_controller.dart';
import 'package:mahmoud_store/core/app/env_variable.dart';
import 'package:mahmoud_store/core/common/no_network_screen.dart';
import 'package:mahmoud_store/core/language/app_localizations_setup.dart';
import 'package:mahmoud_store/core/routes/app_routes.dart';
import 'package:mahmoud_store/core/styles/theme/app_theme.dart';

class MahmoudStore extends StatelessWidget {
  const MahmoudStore({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (_, isConnected, _) {
        return ScreenUtilInit(
          designSize: const Size(375, 812),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, widget) {
            return GestureDetector(
              onTap: () {
                // إلغاء تركيز لوحة المفاتيح عند النقر خارج الحقول
                FocusManager.instance.primaryFocus?.unfocus();
              },
              child: MaterialApp(
                debugShowCheckedModeBanner: EnvVariable.instance.debugMode,

                theme: themeDark(),
                locale: const Locale('en'), //TODO: change locale with cubit
                localizationsDelegates:
                    AppLocalizationsSetup.localizationsDelegates,
                supportedLocales: AppLocalizationsSetup.supportedLocales,
                localeResolutionCallback:
                    AppLocalizationsSetup.localeResolutionCallback,
                onGenerateRoute: AppRoutes.onGenerateRoute,
                initialRoute: isConnected ? AppRoutes.login : null,
                home: isConnected ? null : const NoNetWorkScreen(),
                builder: (context, widget) {
                  // تهيئة الاتصال بالشبكة داخل الـ Builder لضمان توفر السياق
                  ConnectivityController.instance.init();
                  return widget!;
                },
              ),
            );
          },
        );
      },
    );
  }
}
