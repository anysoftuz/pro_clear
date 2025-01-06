import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pro_clear/src/assets/colors/colors.dart';
import 'package:pro_clear/src/assets/icons.dart';

class MainView extends StatefulWidget {
  const MainView({super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  void _onTap(BuildContext context, int index) {
    debugPrint("NIma gap $index");
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.navigationShell,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(24),
          topLeft: Radius.circular(24),
        ),
        child: BottomNavigationBar(
          onTap: (value) => _onTap(context, value),
          selectedItemColor: green,
          unselectedItemColor: gray,
          currentIndex: widget.navigationShell.currentIndex,
          backgroundColor: const Color(0xFF0E121B),
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              activeIcon: AppIcons.homeActive.svg(),
              icon: AppIcons.home.svg(),
              label: "Главный",
            ),
            BottomNavigationBarItem(
              activeIcon: AppIcons.fileUser.svg(
                color: green,
                height: 28,
              ),
              icon: AppIcons.fileUser.svg(
                height: 28,
              ),
              label: "Заявления",
            ),
            BottomNavigationBarItem(
              activeIcon: AppIcons.addCircleActive.svg(),
              icon: AppIcons.addCircle.svg(),
              label: "Чек лист",
            ),
            BottomNavigationBarItem(
              activeIcon: AppIcons.profileActive.svg(),
              icon: AppIcons.profile.svg(),
              label: "Профиль",
            )
          ],
        ),
      ),
    );
  }
}
