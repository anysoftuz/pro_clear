import 'package:flutter/material.dart';
import 'package:pro_clear/presentation/views/statements/statements_info_view.dart';
import 'package:pro_clear/src/assets/colors/colors.dart';
import 'package:pro_clear/src/assets/icons.dart';

class StatementItem extends StatelessWidget {
  const StatementItem({super.key, required this.isActive});
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        onTap: () {
          Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(
            builder: (context) => const StatementsInfoView(),
          ));
        },
        leading: AppIcons.fileUser.svg(),
        title: Row(
          children: [
            const Expanded(
              child: Text(
                "Заявление № 124",
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(width: 4),
            Container(
              decoration: BoxDecoration(
                color: isActive
                    ? const Color(0xFFE0FAEC)
                    : const Color(0xFFFFF1EB),
                borderRadius: BorderRadius.circular(6),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 4,
              ),
              child: Row(
                children: [
                  isActive
                      ? AppIcons.circleFill.svg()
                      : AppIcons.alertFill.svg(),
                  const SizedBox(width: 4),
                  if (isActive)
                    const Text(
                      'Завершено',
                      style: TextStyle(
                        color: Color(0xFF1FC16B),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  else
                    const Text(
                      'Новый',
                      style: TextStyle(
                        color: Color(0xFFFF8447),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                ],
              ),
            ),
          ],
        ),
        trailing: AppIcons.arrowRight.svg(),
      ),
    );
  }
}
