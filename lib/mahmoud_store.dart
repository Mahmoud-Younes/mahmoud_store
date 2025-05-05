import 'package:flutter/material.dart';
import 'package:mahmoud_store/core/app/env_variable.dart';

class MahmoudStore extends StatelessWidget {
  const MahmoudStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(appBar: AppBar(title: const Text('mahmoud store'))),
    );
  }
}
