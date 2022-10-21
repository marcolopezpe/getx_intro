import 'package:flutter/material.dart';

class HeadersPico extends StatelessWidget {
  const HeadersPico({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: CustomPaint(
          painter: _HeaderPico(),
        ),
      ),
    );
  }
}

class _HeaderPico extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Configurar mi lapiz
    final lapiz = Paint();

    // Personalizar lapiz
    lapiz.color = Colors.purple[900] ?? Colors.purple;
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 10.0;

    // Papel
    final path = Path();

    // Dibujar
    path.lineTo(0, size.height * .30);
    path.lineTo(size.width * .5, size.height * .35);
    path.lineTo(size.width, size.height * .30);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    // Mostrar dibujo en pantalla
    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
