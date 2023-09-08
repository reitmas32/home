import 'package:flutter/material.dart';
import 'package:home/ui/widgets/tab.dart';

// ignore: must_be_immutable
class UNIHacksDrawer extends StatelessWidget {
  UNIHacksDrawer({super.key, this.scrollController});

  ScrollController? scrollController;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: Text(
              'UNIHacks',
              style: TextStyle(
                color: Colors.blue[700],
                fontSize: 25.0,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: TabWidget(
              lable: 'Projects',
              onPressed: () {
                Navigator.pop(context);
                scrollController?.animateTo(450,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.decelerate);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: TabWidget(
              lable: 'About',
              onPressed: () {
                Navigator.pop(context);
                scrollController?.animateTo(0,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.decelerate);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: TabWidget(
              lable: 'Developers',
              onPressed: () {
                Navigator.pop(context);
                scrollController?.animateTo(1050,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.decelerate);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: TabWidget(
              lable: 'Contact',
              onPressed: () {
                Navigator.pop(context);
                scrollController?.animateTo(2000,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.decelerate);
              },
            ),
          ),
        ],
      ),
    );
  }
}
