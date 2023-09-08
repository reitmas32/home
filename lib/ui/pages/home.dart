import 'package:flutter/material.dart';
import 'package:home/ui/widgets/about_landscape.dart';
import 'package:home/ui/widgets/about_portrait.dart';
import 'package:home/ui/widgets/appbar.dart';
import 'package:home/ui/widgets/carusel_projects.dart';
import 'package:home/ui/widgets/developers_wrap.dart';
import 'package:home/ui/widgets/fotter.dart';
import 'package:home/ui/widgets/unihacks_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: UNIHacksAppBar(
        scrollController: scrollController,
      ),
      drawer: size.width > 700
          ? null
          : UNIHacksDrawer(
              scrollController: scrollController,
            ),
      body: ListView(
        controller: scrollController,
        children: [
          const SizedBox(
            height: 100,
          ),
          Center(
            child: Column(
              children: [
                Container(
                  height: size.width > 850 ? 100 : 250,
                  width: 900,
                  child: size.width > 850
                      ? const AboutLandscape()
                      : const AboutPortrait(),
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
          if (size.width > 700)
            const SizedBox(
              height: 100,
            ),
          CaruselProjects(),
          const SizedBox(
            height: 300,
          ),
          const DevelopersWrap(),
          const SizedBox(
            height: 300,
          ),
          const Fotter(),
        ],
      ),
    );
  }
}
