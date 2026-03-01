import 'package:flutter/material.dart';

class HomeIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    final w = size.width;
    final h = size.height;
    final r = 18.0; // 👈 corner roundness (increase for more curve)

    final path = Path();

    // Start top center
    path.moveTo(w * 0.5, r);

    // Top right curve
    path.quadraticBezierTo(
      w * 0.85, 0,
      w - r, h * 0.35,
    );

    // Bottom right curve
    path.quadraticBezierTo(
      w, h * 0.75,
      w * 0.75, h - r,
    );

    // Bottom left curve
    path.quadraticBezierTo(
      w * 0.5, h,
      w * 0.25, h - r,
    );

    // Left curve
    path.quadraticBezierTo(
      0, h * 0.75,
      r, h * 0.35,
    );

    // Close to top
    path.quadraticBezierTo(
      w * 0.15, 0,
      w * 0.5, r,
    );

    path.close();

    canvas.drawPath(path, paint);

    // Smile
    final smileRect = Rect.fromCenter(
      center: Offset(w / 2, h * 0.6),
      width: w * 0.35,
      height: h * 0.25,
    );

    canvas.drawArc(
      smileRect,
      0,
      3.14,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}