import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mahmoud_store/firebase_options.dart';
import 'package:mahmoud_store/mahmoud_store.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]).then((_) {
    runApp(const MahmoudStore());
  });
}
