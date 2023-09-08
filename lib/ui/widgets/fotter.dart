// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unihacks_ui_kit/themes/theme_provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class Fotter extends StatelessWidget {
  const Fotter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final currentTheme = Provider.of<ThemeProvider>(context);
    final size = MediaQuery.of(context).size;
    return Container(
      height: MediaQuery.of(context).size.height / 4,
      color: currentTheme.isDarkTheme()
          ? const Color.fromARGB(255, 94, 93, 93)
          : const Color.fromARGB(255, 196, 194, 194),
      padding: EdgeInsets.symmetric(
          horizontal: size.width > 550 ? size.width / 5 : 20),
      child: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '© 2023 UNIHacks',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                Spacer(),
                ContactButton(
                  lable: 'twitter',
                  iconData: EvaIcons.twitterOutline,
                ),
                ContactButton(
                  lable: 'github',
                  iconData: EvaIcons.githubOutline,
                  url: 'https://github.com/UniHacksOrg',
                ),
                ContactButton(
                  lable: 'linkedin',
                  url: 'https://github.com/UniHacksOrg',
                  iconData: EvaIcons.linkedinOutline,
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Text('🚀 BUILT WITH FLUTTER'),
          ],
        ),
      ),
    );
  }
}

class ContactButton extends StatelessWidget {
  const ContactButton({
    super.key,
    required this.lable,
    required this.iconData,
    this.url = '',
  });

  final String lable;
  final IconData iconData;
  final String url;

  Future<void> _externalLaunchUrl() async {
    if (kIsWeb) {
      final anchor = AnchorElement(href: url)
        ..setAttribute('target', 'blank')
        ..click();
    } else {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'No se pudo abrir la URL $url';
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: lable,
      child: InkWell(
        onTap: _externalLaunchUrl,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8.0,
            horizontal: 15.0,
          ),
          child: Icon(
            iconData,
          ),
        ),
      ),
    );
  }
}
