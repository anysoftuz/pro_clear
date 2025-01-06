import 'package:flutter/material.dart';
import 'package:pro_clear/presentation/views/checklist/name_of_service2.dart';
import 'package:pro_clear/presentation/views/checklist/name_of_service3.dart';
import 'package:pro_clear/src/assets/icons.dart';

class NameOfService extends StatelessWidget {
  const NameOfService({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Наименование услуги")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: AppIcons.checkboxActive.svg(),
              title: const Text("Мытье окон"),
              subtitle: const Text("92 000.00 сум"),
              trailing: AppIcons.arrowdown.svg(),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const NameOfService2(),
                ));
              },
            ),
            const Divider(height: 1),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: AppIcons.checkbox.svg(),
              title: const Text("Химчистка мебели"),
              subtitle: const Text("92 000.00 сум"),
              trailing: AppIcons.arrowdown.svg(),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const FurnitreDryCleaning(),
                ));
              },
            ),
            const Divider(height: 1),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: AppIcons.checkbox.svg(),
              title: const Text("Офис"),
              subtitle: const Text("92 000.00 сум"),
              trailing: AppIcons.arrowdown.svg(),
              onTap: () {},
            ),
            const Divider(height: 1),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: AppIcons.checkbox.svg(),
              title: const Text("Производственное помещение"),
              subtitle: const Text("92 000.00 сум"),
              trailing: AppIcons.arrowdown.svg(),
              onTap: () {},
            ),
            const Divider(height: 1),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: AppIcons.checkbox.svg(),
              title: const Text("Магазин"),
              subtitle: const Text("92 000.00 сум"),
              trailing: AppIcons.arrowdown.svg(),
              onTap: () {},
            ),
            const Divider(height: 1),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: AppIcons.checkbox.svg(),
              title: const Text("Торговый центр"),
              subtitle: const Text("92 000.00 сум"),
              trailing: AppIcons.arrowdown.svg(),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
