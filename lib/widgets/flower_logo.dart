import 'package:flutter/material.dart';

class FlowerLogo extends StatelessWidget {
  final double size;
  final Color color;

  // TODO 1: Reemplace este constructor que no funciona con uno que coincida con la forma en que instanciamos esta clase en main.dart.
  const FlowerLogo();

  @override
  Widget build(BuildContext context) {
    final circleSize = size / 2;
    final gapSize = size / 10;

    // TODO 0: ¿Cuál es el objetivo principal del widget Stack? ¿Para qué lo usamos? Por favor responde esta pregunta en este mismo comentario.
    // El objetivo principal es.....
    return Stack(
      children: [
        // We require some non-Positioned widget so Stack can get its size.
        Container(
          width: size,
          height: size,
        ),
        // Top left
        Positioned(
          top: gapSize,
          left: gapSize,
          child: circle(),
        ),
        // Top right
        Positioned(
          top: gapSize,
          left: circleSize - gapSize,
          child: circle(),
        ),
        // Mid left
        Positioned(
          top: circleSize - gapSize * 2,
          left: 0,
          child: circle(),
        ),
        // Mid right
        Positioned(
          top: circleSize - gapSize * 2,
          left: circleSize,
          child: circle(),
        ),
        // Bottom left
        Positioned(
          top: circleSize,
          left: gapSize,
          child: circle(),
        ),
        // Bottom right
        Positioned(
          top: circleSize,
          left: circleSize - gapSize,
          child: circle(),
        ),
      ],
    );
  }

  Widget circle() {
    final circleSize = size / 2;

    return Container(
      width: circleSize,
      height: circleSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color.withOpacity(0.6),
      ),
    );
  }
}
