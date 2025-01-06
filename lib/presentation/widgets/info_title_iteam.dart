import 'package:flutter/material.dart';

class InfoTitleIteam extends StatelessWidget {
  const InfoTitleIteam({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        const Divider(),
        const SizedBox(height: 8),
      ],
    );
  }
}
