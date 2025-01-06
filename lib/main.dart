import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:pro_clear/infrastructure/repo/storage_repository.dart';
import 'package:pro_clear/presentation/routes/app_routes.dart';
import 'package:pro_clear/src/assets/colors/colors.dart';
import 'package:pro_clear/utils/bloc_logger.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();
  await StorageRepository.getInstance();
  if (kDebugMode) {
    Bloc.observer = LogBlocObserver();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'PRO CLEAR',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF5F7Fa),
        appBarTheme: const AppBarTheme(
          backgroundColor: white,
          surfaceTintColor: white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(24),
            ),
          ),
        ),
        dividerTheme: const DividerThemeData(
          color: Color(0xFFE1E4EA),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: green),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouts.router,
      builder: (context, child) => KeyboardDismisser(child: child),
    );
  }
}
