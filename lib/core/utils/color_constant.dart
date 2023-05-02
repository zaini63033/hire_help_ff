import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color red900 = fromHex('#992229');

  static Color deepPurpleA20019 = fromHex('#198949f2');

  static Color lightBlue900 = fromHex('#236893');

  static Color teal300 = fromHex('#3ca8c0');

  static Color yellow800 = fromHex('#e39726');

  static Color black900 = fromHex('#000000');

  static Color blueGray800 = fromHex('#474a56');

  static Color blueGray900 = fromHex('#222357');

  static Color gray900A8 = fromHex('#a8600000');

  static Color yellow80001 = fromHex('#e7961c');

  static Color gray400 = fromHex('#c2bfbf');

  static Color blueGray100 = fromHex('#d5d7db');

  static Color blueGray400 = fromHex('#888888');

  static Color amber600 = fromHex('#d4b40b');

  static Color gray800 = fromHex('#4b4b4b');

  static Color amber300 = fromHex('#fae055');

  static Color gray300 = fromHex('#d9dde2');

  static Color gray30001 = fromHex('#e6e6e6');

  static Color gray100 = fromHex('#f3f3f3');

  static Color indigo90003 = fromHex('#0c3074');

  static Color indigo90001 = fromHex('#0b2b68');

  static Color indigo90002 = fromHex('#103784');

  static Color indigo900 = fromHex('#103885');

  static Color blueGray90033 = fromHex('#33302756');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
