import 'dart:io';

import 'package:flutter/material.dart';

class AppImages {
  static const eng = "assets/images/eng.png";
  static const logos = "assets/images/logos.png";
  static const emoji = "assets/images/emoji.png";
  static const ru = "assets/images/ru.png";
  static const uzb = "assets/images/uzb.png";
  static const banner = "assets/images/banner.png";
  static const avatar = "assets/images/avatar.png";
  static const succes = "assets/images/succes.png";
  static const image6 = "assets/images/image6.png";
  static const image7 = "assets/images/image7.png";
  static const image8 = "assets/images/image8.png";
  static const image9 = "assets/images/image9.png";
  static const image10 = "assets/images/image10.png";
  static const image11 = "assets/images/image11.png";
  static const image12 = "assets/images/image12.png";
  static const image13 = "assets/images/image13.png";
  static const image14 = "assets/images/image14.png";
  static const image15 = "assets/images/image15.png";
  static const image17 = "assets/images/image17.png";
  static const image18 = "assets/images/image18.png";
}

extension ImgExt on String {
  Image imgAsset({
    double? width,
    double? height,
    BoxFit? fit,
  }) {
    return Image.asset(
      this,
      width: width,
      height: height,
      fit: fit,
    );
  }

  Image imgNetwork({
    double? width,
    double? height,
    BoxFit? fit,
  }) {
    return Image.network(
      this,
      width: width,
      height: height,
      fit: fit,
    );
  }

  Image imgFile({
    double? width,
    double? height,
    BoxFit? fit,
  }) {
    return Image.file(
      File(this),
      width: width,
      height: height,
      fit: fit,
    );
  }
}
