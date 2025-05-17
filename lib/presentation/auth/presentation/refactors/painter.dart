import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_0 =
        Paint()
          ..color = const Color.fromARGB(255, 255, 255, 255)
          ..style = PaintingStyle.fill
          ..strokeWidth = size.width * 0.00
          ..strokeCap = StrokeCap.butt
          ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.5000000, size.height * 0.3000000);
    path_0.quadraticBezierTo(
      size.width * 0.1998000,
      size.height * 0.1031000,
      size.width * 0.2000000,
      size.height * 0.3020000,
    );
    path_0.quadraticBezierTo(
      size.width * 0.2318000,
      size.height * 0.5897000,
      size.width * 0.5016000,
      size.height * 0.8016000,
    );
    path_0.lineTo(size.width * 0.5000000, size.height * 0.3000000);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 =
        Paint()
          ..color = const Color.fromARGB(255, 33, 150, 243)
          ..style = PaintingStyle.stroke
          ..strokeWidth = size.width * 0.00
          ..strokeCap = StrokeCap.butt
          ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paint_stroke_0);

    // Layer 1

    Paint paint_fill_1 =
        Paint()
          ..color = const Color.fromARGB(255, 255, 255, 255)
          ..style = PaintingStyle.fill
          ..strokeWidth = size.width * 0.00
          ..strokeCap = StrokeCap.butt
          ..strokeJoin = StrokeJoin.miter;

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.5000000, size.height * 0.3000000);
    path_1.quadraticBezierTo(
      size.width * 0.8002000,
      size.height * 0.1000000,
      size.width * 0.8032000,
      size.height * 0.3016000,
    );
    path_1.quadraticBezierTo(
      size.width * 0.7714000,
      size.height * 0.5903000,
      size.width * 0.5016000,
      size.height * 0.7988000,
    );
    path_1.lineTo(size.width * 0.5000000, size.height * 0.3000000);
    path_1.close();

    canvas.drawPath(path_1, paint_fill_1);

    // Layer 1

    Paint paint_stroke_1 =
        Paint()
          ..color = const Color.fromARGB(255, 33, 150, 243)
          ..style = PaintingStyle.stroke
          ..strokeWidth = size.width * 0.00
          ..strokeCap = StrokeCap.butt
          ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_1, paint_stroke_1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
//child: CustomPaint(
//   size: Size(WIDTH,(WIDTH*1).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
//   painter: RPSCustomPainter(),
// ),