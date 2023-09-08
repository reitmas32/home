import 'package:flutter/material.dart';

class TabWidget extends StatelessWidget {
  const TabWidget({
    super.key,
    required this.lable,
    this.onPressed,
  });

  final String lable;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 15.0,
        ),
        child: Text(
          lable,
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimary,
            fontSize: size.width > 800 ? 20 : 25,
          ),
        ),
      ),
    );
  }
}
