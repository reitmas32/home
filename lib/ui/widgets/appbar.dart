import 'package:flutter/material.dart';
import 'package:home/ui/widgets/tab.dart';
import 'package:unihacks_ui_kit/buttons/theme_swtcher.dart';

class UNIHacksAppBar extends StatelessWidget implements PreferredSizeWidget {
  const UNIHacksAppBar({
    super.key,
    this.scrollController,
  });

  final ScrollController? scrollController;

  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.primary,
      toolbarHeight: 150,
      actions: [
        const ThemeSwitcher(),
        const SizedBox(
          width: 50.0,
        ),
        if (size.aspectRatio > 1.5)
          const SizedBox(
            width: 200,
          ),
      ],
      elevation: 0.5,
      title: Row(
        children: [
          if (size.aspectRatio > 1.5)
            const SizedBox(
              width: 200,
            ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
              'https://avatars.githubusercontent.com/u/138874808?s=96&v=4',
              height: 60,
            ),
          ),
          if (size.width > 850)
            Text(
              'UNIHacks',
              style: TextStyle(
                color: Colors.blue[700],
                fontSize: 25.0,
              ),
            ),
          const SizedBox(
            width: 20,
          ),
          if (size.width > 700)
            TabWidget(
              lable: 'Projects',
              onPressed: () {
                scrollController?.animateTo(250,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.decelerate);
              },
            ),
          if (size.width > 700)
            TabWidget(
              lable: 'About',
              onPressed: () {
                scrollController?.animateTo(0,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.decelerate);
              },
            ),
          if (size.width > 700)
            TabWidget(
              lable: 'Developers',
              onPressed: () {
                scrollController?.animateTo(800,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.decelerate);
              },
            ),
          if (size.width > 700)
            TabWidget(
              lable: 'Contact',
              onPressed: () {
                scrollController?.animateTo(1500,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.decelerate);
              },
            ),
        ],
      ),
    );
  }
}
