import 'package:flutter/material.dart';

class CircularTabIndicator extends Decoration{
  @override
  BoxPainter createBoxPainter([VoidCallback onchanged]){
    return new _BorderPaint(this, onchanged);
  }
}


class _BorderPaint extends BoxPainter{
  _BorderPaint(this.decoration, VoidCallback onChanged)
      : assert(decoration != null), super(onChanged);

  final CircularTabIndicator decoration;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration){
    assert(configuration != null);
    assert(configuration.size != null);
    final Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;

    Rect rect = offset & configuration.size;
    print(rect);
    Rect ind = new Rect.fromLTRB(
      rect.left + 10,
      rect.top + 5,
      rect.right - 10,
      rect.bottom - 5
    );
    canvas.drawRRect(
      RRect.fromRectAndRadius(ind, Radius.circular(24.0)), paint,
    );
  }