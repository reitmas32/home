import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home/ui/pages/error.dart';
import 'package:home/ui/pages/home.dart';
import 'package:home/ui/theme_data.dart';
import 'package:provider/provider.dart';
import 'package:unihacks_ui_kit/themes/theme_provider.dart';

CustomTransitionPage buildPageWithDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        ScaleTransition(scale: animation, child: child),
  );
}

class UNIHacks extends StatefulWidget {
  const UNIHacks({
    super.key,
  });

  @override
  State<UNIHacks> createState() => _UNIHacksState();
}

class _UNIHacksState extends State<UNIHacks> {
  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const HomePage(),
        pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
          context: context,
          state: state,
          child: const HomePage(),
        ),
      ),
    ],
    errorBuilder: (context, state) => const ErrorPage(),
  );

  @override
  Widget build(BuildContext context) {
    final currentTheme = Provider.of<ThemeProvider>(context);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
      theme: currentTheme.isDarkTheme()
          ? AppTheme.uniDarkTheme
          : AppTheme.uniLightTheme,
      darkTheme: AppTheme.uniDarkTheme,
      themeMode: ThemeMode.light,
    );
  }
}
