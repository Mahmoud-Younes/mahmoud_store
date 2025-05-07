import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Text('login'));
    //  Scaffold(
    //   bottomNavigationBar: CustomPaint(
    //     size: Size(
    //       MediaQuery.of(context).size.width,
    //       150.h,
    //     ),
    //     painter: AuthCustomPainter(
    //       gradient: LinearGradient(
    //         colors: [
    //           context.color.bluePinkLight!,
    //           context.color.bluePinkLight!,
    //           context.color.bluePinkLight!,
    //           context.color.bluePinkDark!,
    //         ],
    //       ),
    //     ),
    //   ),
    //   body: const SafeArea(
    //     bottom: false,
    //     child: LoginBody(),
    //   ),
    // );
  }
}
