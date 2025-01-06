import 'package:flutter/material.dart';
import 'package:pro_clear/presentation/views/auth/widgets/login_iteam.dart';
import 'package:pro_clear/presentation/widgets/w_button.dart';
import 'package:pro_clear/src/assets/images.dart';

class AuthView extends StatefulWidget {
  const AuthView({super.key});

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF6EC875),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            height: MediaQuery.sizeOf(context).height / 2,
            child: Image.asset(
              AppImages.banner,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.all(20.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              ),
              child: const LoginIteam(),
            ),
          ),
        ],
      ),
    );
  }
}

class LoginSuccesIteam extends StatelessWidget {
  const LoginSuccesIteam({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 16),
        SizedBox(
          height: 96,
          width: 96,
          child: AppImages.succes.imgAsset(),
        ),
        const SizedBox(height: 20),
        const Center(
          child: Text(
            'Вход',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          "Поздравляем, вы успешно обновили пароль для входа в ваш профиль. Пожалуйста, введите логин и пароль повторно, чтобы войти в ваш аккаунт.",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color(0xFF717784),
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 32),
        WButton(
          onTap: () {},
          text: "Вход",
        ),
        const SizedBox(height: 64),
      ],
    );
  }
}
