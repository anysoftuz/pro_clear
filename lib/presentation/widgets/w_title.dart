
import 'package:flutter/material.dart';
import 'package:pro_clear/src/assets/colors/colors.dart';

class WTitile extends StatelessWidget {
  const WTitile({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgWeak50,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: 4,
        horizontal: 16,
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: textSoft400,
        ),
      ),
    );
  }
}
