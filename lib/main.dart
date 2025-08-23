import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mahmoud_store/core/app/bloc_observer.dart';
import 'package:mahmoud_store/core/app/env.variables.dart';
import 'package:mahmoud_store/core/di/injection_container.dart';
import 'package:mahmoud_store/core/service/shared_pref/shared_pref.dart';
import 'package:mahmoud_store/mahmoud_store.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EnvVariable.instance.init(envType: EnvTypeEnum.dev);
  Platform.isAndroid
      ? await Firebase.initializeApp(
        options: const FirebaseOptions(
          apiKey: 'AIzaSyDwf2evL1nPpuYOdwoFC_EOPeW2DhoC2zs',
          appId: '1:402676696580:android:234e1436517f381716d751',
          messagingSenderId: '402676696580',
          projectId: 'mahmoud-store-b7e94',
          storageBucket: 'mahmoud-store-b7e94.firebasestorage.app',
        ),
      )
      : await Firebase.initializeApp();
  await SharedPref().instantiatePreferences();

  await setupInjector();

  Bloc.observer = AppBlocObserver();

  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp],
  ).then((_) {
    runApp(const MahmoudStore());
  });
}
