import 'dart:ui';

import 'package:flutter_svg/flutter_svg.dart';

class AppIcons {
  static const arrowRight = "assets/icons/arrow_right.svg";
  static const addCircleActive = "assets/icons/add_circle_active.svg";
  static const addCircle = "assets/icons/add_circle.svg";
  static const addLine = "assets/icons/add-line.svg";
  static const subtract = "assets/icons/subtract-line.svg";
  static const user = "assets/icons/user.svg";
  static const arrowdown = "assets/icons/arrow-down.svg";
  static const radio = "assets/icons/radio.svg";
  static const radioActive = "assets/icons/radio_active.svg";
  static const share = "assets/icons/share.svg";
  static const profile = "assets/icons/profile.svg";
  static const emoji = "assets/icons/emoji.svg";
  static const building = "assets/icons/building.svg";
  static const currency = "assets/icons/currency.svg";
  static const eye = "assets/icons/eye.svg";
  static const hashtag = "assets/icons/hashtag.svg";
  static const home = "assets/icons/home.svg";
  static const lock = "assets/icons/lock.svg";
  static const arrowLeft = "assets/icons/arrow-left.svg";
  static const artboard = "assets/icons/artboard.svg";
  static const building2 = "assets/icons/building-2.svg";
  static const fileFormat = "assets/icons/file_format.svg";
  static const handCoin = "assets/icons/hand-coin.svg";
  static const homeActive = "assets/icons/home_active.svg";
  static const mapPinLine = "assets/icons/map-pin-line.svg";
  static const profileActive = "assets/icons/profile_active.svg";
  static const toolsLine = "assets/icons/tools-line.svg";
  static const userLine = "assets/icons/user-6-line.svg";
  static const delete = "assets/icons/delete-bin-2-line.svg";
  static const close = "assets/icons/close-line.svg";
  static const checkbox = "assets/icons/checkbox.svg";
  static const checkboxActive = "assets/icons/checkbox_active.svg";
  static const notification = "assets/icons/notification.svg";
  static const date = "assets/icons/date.svg";
  static const fileUser = "assets/icons/file_user.svg";
  static const circleFill = "assets/icons/circle_fill.svg";
  static const alertFill = "assets/icons/alert_fill.svg";
  static const frame = "assets/icons/frame.svg";
  static const fileList = "assets/icons/file_list.svg";
}

extension SvgExt on String {
  SvgPicture svg({
    Color? color,
    double? width,
    double? height,
  }) {
    return SvgPicture.asset(
      this,
      colorFilter:
          color != null ? ColorFilter.mode(color, BlendMode.srcIn) : null,
      width: width,
      height: height,
    );
  }
}
