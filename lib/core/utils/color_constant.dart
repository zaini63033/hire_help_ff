import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color amberA700C6 = fromHex('#c6daa70b');

  static Color lime700 = fromHex('#c0a33c');

  static Color pink900 = fromHex('#823135');

  static Color gray800 = fromHex('#4b4b4b');

  static Color amber300 = fromHex('#f2d25f');

  static Color gray300 = fromHex('#d9dde2');

  static Color gray30001 = fromHex('#e6e6e6');

  static Color gray100 = fromHex('#f3f3f3');

  static Color teal300 = fromHex('#3ca8c0');

  static Color black900 = fromHex('#000000');

  static Color indigo90003 = fromHex('#0c3074');

  static Color bluegray400 = fromHex('#888888');

  static Color indigo90001 = fromHex('#0b2b68');

  static Color indigo90002 = fromHex('#103784');

  static Color blueGray800 = fromHex('#474a56');

  static Color indigo900 = fromHex('#103885');

  static Color blueGray90033 = fromHex('#33302756');

  static Color blueGray900 = fromHex('#222357');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
