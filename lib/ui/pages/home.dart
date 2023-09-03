import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:home/ui/widgets/appbar.dart';
import 'package:home/ui/widgets/fotter.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const UNIHacksAppBar(),
      body: ListView(
        children: [
          SizedBox(
            height: 100,
          ),
          Center(
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: 900,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(width: 20.0, height: 100.0),
                      const Text(
                        'No se necesita mucho para ',
                        style: TextStyle(
                          fontSize: 50,
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
                  ),
                ),
                Container(
                  width: 900,
                  child: const Text(
                    'Somos un equipo diverso de estudiantes unidos por la pasión por la tecnología y la innovación, colaborando para abordar desafíos en nuestra comunidad universitaria.',
                    style: TextStyle(
                      fontSize: 20.0,
                      height: 1.2,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          CarouselDemo(),
          SizedBox(
            height: 300,
          ),
          const Fotter(),
        ],
      ),
    );
  }
}

class CarouselDemo extends StatelessWidget {
  final List<String> images = [
    'https://res.cloudinary.com/canonical/image/fetch/f_auto,q_auto,fl_sanitize,w_2557,h_1321/https://assets.ubuntu.com/v1/acdf946a-Screenshot+from+2022-04-18+13-05-17.png',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXXFXxnHNlrKeb9LWbu52jzQPglMVeQiOWmDExUrpv-17w65BuvYSUN7C2lmY3lvjTlb8&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT32QCYIW5McTn1JIzIbPdgPDC_BJyYqPEJ5AX81EcQ-YnpApiEF8pXtA6Ci04V62zJ0QQ&usqp=CAU',
    // Agrega más imágenes aquí
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 900,
      child: CarouselSlider.builder(
        itemCount: images.length * 2, // Duplica la cantidad de imágenes
        itemBuilder: (context, index, realIndex) {
          final int currentIndex = index % images.length;
          return Image.network(
            images[currentIndex],
            fit: BoxFit.cover,
          );
        },
        options: CarouselOptions(
          aspectRatio: 16 / 9,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true, // Habilita el desplazamiento infinito
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
