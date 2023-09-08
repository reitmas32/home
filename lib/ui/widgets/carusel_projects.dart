import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CaruselProjects extends StatelessWidget {
  final List<String> images = [
    'https://res.cloudinary.com/canonical/image/fetch/f_auto,q_auto,fl_sanitize,w_2557,h_1321/https://assets.ubuntu.com/v1/acdf946a-Screenshot+from+2022-04-18+13-05-17.png',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXXFXxnHNlrKeb9LWbu52jzQPglMVeQiOWmDExUrpv-17w65BuvYSUN7C2lmY3lvjTlb8&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT32QCYIW5McTn1JIzIbPdgPDC_BJyYqPEJ5AX81EcQ-YnpApiEF8pXtA6Ci04V62zJ0QQ&usqp=CAU',
    // Agrega más imágenes aquí
  ];

  CaruselProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
