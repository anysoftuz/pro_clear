import 'package:flutter/material.dart';
import 'package:pro_clear/src/assets/themes/theme_colors.dart';


extension BuildContextExt on BuildContext {
  AppThemeColor get color => Theme.of(this).extension<AppThemeColor>()!;
}
