import 'package:flutter/material.dart';
import 'package:mahmoud_store/core/extensions/context_extension.dart';
import 'package:mahmoud_store/core/language/lang_keys.dart';
import 'package:mahmoud_store/core/routes/app_routes.dart';

class TestOneScreen extends StatelessWidget {
  const TestOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: const Text('One'),
      ),
      body: Column(
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                context.pushName(AppRoutes.testTwo);
              },
              child: Text(
                'Go Two Screen',
                style: TextStyle(
                  color: context.color.mainColor,
                  fontSize: 30,
                ),
              ),
            ),
          ),
          Text(
            context.translate(LangKeys.appName),
            style: const TextStyle(color: Colors.black, fontSize: 40),
          ),
          
          Image.asset(context.assets.testImage ?? '')
        ],
      ),
    );
  }
}
