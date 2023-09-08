import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AboutLandscape extends StatelessWidget {
  const AboutLandscape({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(width: 20.0, height: 100.0),
        Text(
          'No se necesita mucho para ',
          style: TextStyle(
            fontSize: size.width > 700 ? 50 : 35,
          ),
        ),
        const SizedBox(width: 20.0, height: 100.0),
        DefaultTextStyle(
          style: TextStyle(
            fontSize: 50.0,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          child: AnimatedTextKit(
            animatedTexts: [
              RotateAnimatedText('Innovar '),
              RotateAnimatedText('Crear   '),
              RotateAnimatedText('Impactar'),
            ],
            repeatForever: true,
          ),
        ),
      ],
    );
  }
}
