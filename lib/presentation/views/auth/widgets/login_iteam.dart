import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pro_clear/presentation/routes/route_name.dart';
import 'package:pro_clear/presentation/widgets/custom_text_field.dart';
import 'package:pro_clear/presentation/widgets/w_button.dart';
import 'package:pro_clear/src/assets/colors/colors.dart';
import 'package:pro_clear/src/assets/icons.dart';
import 'package:pro_clear/utils/formatters.dart';

class LoginIteam extends StatelessWidget {
  const LoginIteam({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Center(
          child: Text(
            'Вход',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 12),
        const Text(
          'Введите свой регистрационный номер для доступа к профилю!',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color(0xFF717784),
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 24),
        CustomTextField(
          title: "Телефон",
          hintText: "(99) 000-00-00",
          prefixIcon: const Text("+998"),
          keyboardType: TextInputType.phone,
          formatter: [Formatters.phoneFormatter],
          onChanged: (phone) {},
        ),
        const SizedBox(height: 12),
        CustomTextField(
          title: "Пароль",
          prefixIcon: AppIcons.lock.svg(),
          suffixIcon: AppIcons.eye.svg(),
          hintText: "• • • • • • • • • • ",
          onChanged: (phone) {},
        ),
        const SizedBox(height: 12),
        GestureDetector(
          onTap: () {},
          child: const Text(
            'Вы забыли пароль?',
            style: TextStyle(
              color: blue,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 24),
        WButton(
          onTap: () {
            context.go(AppRouteName.home);
          },
          text: "Вход",
          // isDisabled: true,
        ),
        const SizedBox(height: 28),
      ],
    );
  }
}
