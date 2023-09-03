import 'package:flutter/material.dart';
import 'package:home/ui/unihacks.dart';
import 'package:provider/provider.dart';
import 'package:unihacks_ui_kit/themes/theme_provider.dart';

class UNIHacksApp extends StatefulWidget {
  const UNIHacksApp({super.key});

  @override
  State<UNIHacksApp> createState() => _UNIHacksAppState();
}

class _UNIHacksAppState extends State<UNIHacksApp> {
  ThemeProvider themeProvider = ThemeProvider();

  @override
  void initState() {
    getCurrentAppTheme(themeProvider);
    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => themeProvider),
      ],
      child: const UNIHacks(),
    );
  }
}
