import 'dart:typed_data';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:image/image.dart' as im;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PrintUtils {
  Future<Uint8List> convertToImage(String label,
      {double fontSize = 16, fontWeight = FontWeight.w500}) async {
    final recorder = PictureRecorder();
    final canvas = Canvas(recorder);
    final backgroundPaint = Paint()..color = Colors.white;
    const backgroundRect = Rect.fromLTRB(375, 10000, 0, 0);
    final backgroundPath = Path()
      ..addRRect(
        RRect.fromRectAndRadius(backgroundRect, const Radius.circular(0)),
      )
      ..close();
    canvas.drawPath(backgroundPath, backgroundPaint);

    final ticketNum = TextPainter(
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.left,
        text: TextSpan(
            text: label,
            style: TextStyle(
                color: Colors.black,
                fontSize: fontSize,
                fontWeight: fontWeight)));
    ticketNum
      ..layout(maxWidth: 375)
      ..paint(canvas, const Offset(0, 0));
    canvas.restore();
    final picture = recorder.endRecording();
    final pngBytes =
        await (await picture.toImage(375.toInt(), ticketNum.height.toInt() + 5))
            .toByteData(format: ImageByteFormat.png);
    return pngBytes!.buffer.asUint8List();
  }
}
