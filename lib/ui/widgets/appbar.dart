import 'package:flutter/material.dart';
import 'package:home/ui/widgets/tab.dart';
import 'package:unihacks_ui_kit/buttons/theme_swtcher.dart';

class UNIHacksAppBar extends StatelessWidget implements PreferredSizeWidget {
  const UNIHacksAppBar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print(size.aspectRatio);
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
          TabWidget(
            lable: 'Projects',
            onPressed: () {},
            simple: false,
          ),
          TabWidget(
            lable: 'About',
            onPressed: () {},
          ),
          TabWidget(
            lable: 'Developers',
            onPressed: () {},
          ),
          TabWidget(
            lable: 'Contact',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
