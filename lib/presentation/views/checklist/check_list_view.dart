import 'package:flutter/material.dart';
import 'package:pro_clear/presentation/views/checklist/check_list_create_view.dart';
import 'package:pro_clear/src/assets/colors/colors.dart';
import 'package:pro_clear/src/assets/icons.dart';

class CheckListView extends StatefulWidget {
  const CheckListView({super.key});

  @override
  State<CheckListView> createState() => _CheckListViewState();
}

class _CheckListViewState extends State<CheckListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Чек лист заказа")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Тип клиента",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 12),
            CheckListIteam(
              icon: AppIcons.user.svg(),
              index: 0,
              onTap: (index) {
                Navigator.of(context, rootNavigator: true)
                    .push(MaterialPageRoute(
                  builder: (context) => CheckListCreateView(index: index),
                ));
              },
              title: "Физическое лицо",
              subTitle: "Гражданин, не обладающий статусом юридического лица.",
            ),
            const SizedBox(height: 12),
            CheckListIteam(
              icon: AppIcons.building.svg(),
              index: 1,
              onTap: (index) {
                Navigator.of(context, rootNavigator: true)
                    .push(MaterialPageRoute(
                  builder: (context) => CheckListCreateView(index: index),
                ));
              },
              title: "Корпоративные",
              subTitle: "Юридическое лицо, такое как компания или организация",
            ),
          ],
        ),
      ),
    );
  }
}

class CheckListIteam extends StatelessWidget {
  const CheckListIteam({
    super.key,
    required this.title,
    required this.subTitle,
    required this.icon,
    required this.index,
    required this.onTap,
    this.selIndex = -1,
  });
  final String title;
  final String subTitle;
  final Widget icon;
  final int index;
  final int selIndex;
  final Function(int index) onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(index);
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: selIndex == index ? green : borderColor),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
              width: 40,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: white,
                border: Border.all(color: borderColor),
              ),
              child: icon,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subTitle,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            selIndex == index
                ? AppIcons.radioActive.svg()
                : AppIcons.radio.svg(),
          ],
        ),
      ),
    );
  }
}
