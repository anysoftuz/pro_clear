import 'package:flutter/material.dart';
import 'package:pro_clear/src/assets/icons.dart';

class TypeOfPremises extends StatelessWidget {
  const TypeOfPremises({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Вид помещения")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: AppIcons.checkbox.svg(),
              title: const Text("Коттедж"),
              onTap: () {},
            ),
            const Divider(height: 1),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: AppIcons.checkbox.svg(),
              title: const Text("Квартира"),
              onTap: () {},
            ),
            const Divider(height: 1),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: AppIcons.checkbox.svg(),
              title: const Text("Офис"),
              onTap: () {},
            ),
            const Divider(height: 1),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: AppIcons.checkbox.svg(),
              title: const Text("Производственное помещение"),
              onTap: () {},
            ),
            const Divider(height: 1),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: AppIcons.checkbox.svg(),
              title: const Text("Магазин"),
              onTap: () {},
            ),
            const Divider(height: 1),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: AppIcons.checkbox.svg(),
              title: const Text("Торговый центр"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
