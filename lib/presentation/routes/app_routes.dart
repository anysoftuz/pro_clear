import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pro_clear/presentation/routes/route_name.dart';
import 'package:pro_clear/presentation/views/auth/auth_view.dart';
import 'package:pro_clear/presentation/views/checklist/check_list_view.dart';
import 'package:pro_clear/presentation/views/error_view.dart';
import 'package:pro_clear/presentation/views/home/home_view.dart';
import 'package:pro_clear/presentation/views/main_view.dart';
import 'package:pro_clear/presentation/views/profile/profile_view.dart';
import 'package:pro_clear/presentation/views/splash_view.dart';
import 'package:pro_clear/presentation/views/statements/statements_view.dart';

sealed class AppRouts {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
  static GoRouter router = GoRouter(
    navigatorKey: navigatorKey,
    initialLocation: AppRouteName.home,
    errorBuilder: (context, state) => const ErrorView(),
    routes: [
      GoRoute(
        path: AppRouteName.errorFound,
        builder: (context, state) => const ErrorView(),
      ),
      GoRoute(
        path: AppRouteName.splash,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: AppRouteName.auth,
        builder: (context, state) => const AuthView(),
      ),
      mainView,
    ],
  );

  static final mainView = StatefulShellRoute.indexedStack(
    builder: (context, state, navigationShell) {
      return MainView(navigationShell: navigationShell);
    },
    branches: <StatefulShellBranch>[
      StatefulShellBranch(
        routes: [
          GoRoute(
            path: AppRouteName.home,
            builder: (context, state) => const HomeView(),
          ),
        ],
      ),
      StatefulShellBranch(
        routes: [
          GoRoute(
            path: AppRouteName.statements,
            builder: (context, state) => const StatementsView(),
          ),
        ],
      ),
      StatefulShellBranch(
        routes: [
          GoRoute(
            path: AppRouteName.checkList,
            builder: (context, state) => const CheckListView(),
          ),
        ],
      ),
      StatefulShellBranch(
        routes: [
          GoRoute(
            path: AppRouteName.profile,
            builder: (context, state) => const ProfileView(),
          ),
        ],
      ),
    ],
  );
}
