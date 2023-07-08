import 'package:flutter/material.dart';

import 'custom_search.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.text, required this.icon, this.onPressed});
  final String text;
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(),
        CustomSearchIcon(
          onPressed: onPressed,
          icon: icon,
        )
      ],
    );
  }
}
