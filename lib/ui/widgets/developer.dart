import 'package:flutter/material.dart';
import 'package:home/models/developer.dart';

class DeveloperWidget extends StatelessWidget {
  const DeveloperWidget({super.key, required this.dev});

  final Developer dev;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width > 700 ? size.width / 5 : size.width / 3,
      height: size.width > 700 ? size.width / 5 : size.width / 3,
      child: Center(
        child: Column(
          children: [
            ClipOval(
              child: Image.network(
                dev.img,
                width:
                    (size.width > 700 ? size.width / 5 : size.width / 3) - 20,
                height:
                    (size.width > 700 ? size.width / 5 : size.width / 3) - 20,
              ),
            ),
            Text(dev.name),
          ],
        ),
      ),
    );
  }
}
