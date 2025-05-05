import 'package:flutter/material.dart';
import 'package:mahmoud_store/core/app/connectivity_controller.dart';
import 'package:mahmoud_store/core/app/env_variable.dart';
import 'package:mahmoud_store/core/common/no_network_screen.dart';

class MahmoudStore extends StatelessWidget {
  const MahmoudStore({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (_, value, _) {
        if (value) {
          return MaterialApp(
            builder: (context, widget) {
              return Scaffold(
                body: Builder(
                  builder: (context) {
                    ConnectivityController.instance.init();
                    return widget!;
                  },
                ),
              );
            },
            debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            ),
            home: Scaffold(appBar: AppBar(title: const Text('mahmoud store'))),
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
