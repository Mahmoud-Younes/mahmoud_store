import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text('sign up'));
    // Scaffold(
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
    //     child: SignUpBody(),
    //   ),
    // );
  }
}
