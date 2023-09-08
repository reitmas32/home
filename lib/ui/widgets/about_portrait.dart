import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AboutPortrait extends StatelessWidget {
  const AboutPortrait({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Text(
          'No se necesita mucho para ',
          style: TextStyle(
            fontSize: size.width > 700 ? 50 : 35,
          ),
          textAlign: TextAlign.center,
        ),
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
