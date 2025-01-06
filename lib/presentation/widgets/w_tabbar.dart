import 'package:flutter/material.dart';
import 'package:pro_clear/src/assets/colors/colors.dart';

class WTabBar extends StatelessWidget {
  final TabController? tabController;
  final List<Widget> tabs;
  final Function(int)? onTap;
  final EdgeInsetsGeometry? padding;

  const WTabBar({
    this.tabController,
    required this.tabs,
    super.key,
    this.onTap,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: bgWeak50,
      ),
      child: TabBar(
        dividerColor: Colors.transparent,
        padding: padding ?? const EdgeInsets.all(2),
        labelPadding: const EdgeInsets.all(8),
        indicator: ShapeDecoration(
          shadows: [
            BoxShadow(
              blurRadius: 4,
              offset: const Offset(0, 2),
              color: const Color(0xFF0E121B).withValues(alpha: .03),
            ),
            BoxShadow(
              blurRadius: 10,
              offset: const Offset(0, 6),
              color: const Color(0xFF0E121B).withValues(alpha: 0.06),
            ),
          ],
          shape: RoundedRectangleBorder(
            side: BorderSide(color: black.withValues(alpha: 0.04)),
            borderRadius: BorderRadius.circular(6),
          ),
          color: white,
        ),
        controller: tabController,
        indicatorSize: TabBarIndicatorSize.tab,
        onTap: onTap,
        splashBorderRadius: BorderRadius.circular(8),
        unselectedLabelStyle: Theme.of(context)
            .textTheme
            .displayLarge!
            .copyWith(fontSize: 14, fontWeight: FontWeight.w600),
        labelStyle: Theme.of(context).textTheme.displayLarge!.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
        unselectedLabelColor: shuttleGrey,
        labelColor: black,
        tabs: tabs,
      ),
    );
  }
}
