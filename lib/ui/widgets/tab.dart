import 'package:flutter/material.dart';

class TabWidget extends StatelessWidget {
  const TabWidget({
    super.key,
    required this.lable,
    this.onPressed,
    this.simple = true,
  });

  final String lable;
  final VoidCallback? onPressed;
  final bool simple;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 15.0,
      ),
      child: Row(
        children: [
          Text(
            lable,
            style: TextStyle(
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
          if (!simple)
            IconButton(
              onPressed: onPressed,
              icon: Icon(
                Icons.keyboard_arrow_down_outlined,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
              hoverColor: Colors.blue[100],
              splashRadius: 15.0,
            ),
        ],
      ),
    );
  }
}
