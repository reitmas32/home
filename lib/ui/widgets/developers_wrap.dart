import 'package:flutter/material.dart';
import 'package:home/services/database_static.dart';
import 'package:home/ui/widgets/developer.dart';

class DevelopersWrap extends StatelessWidget {
  const DevelopersWrap({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        spacing: 10.0, // Espacio horizontal entre los elementos
        runSpacing: 10.0,
        alignment: WrapAlignment.center,

        children: generateDevelopers(),
      ),
    );
  }

  List<Widget> generateDevelopers() {
    List<Widget> developers = [];

    for (var dev in GetDevelopers()) {
      developers.add(DeveloperWidget(dev: dev));
    }

    return developers;
  }
}
