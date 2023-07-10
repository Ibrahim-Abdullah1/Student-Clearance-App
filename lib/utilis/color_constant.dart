import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color indigoA20001 = fromHex('#5d63ff');

  static Color whiteA700B3 = fromHex('#b3ffffff');

  static Color indigoA200 = fromHex('#5d64ff');

  static Color cyan10001 = fromHex('#c4f6ee');

  static Color teal200 = fromHex('#97d7cd');

  static Color lightBlue800 = fromHex('#0079c8');

  static Color gray30099 = fromHex('#99e6e6e6');

  static Color teal300 = fromHex('#55a79a');

  static Color black900 = fromHex('#000000');

  static Color blueGray900 = fromHex('#363636');

  static Color redA20001 = fromHex('#ff5959');

  static Color gray70078 = fromHex('#78555555');

  static Color gray600 = fromHex('#858585');

  static Color gray700 = fromHex('#555555');

  static Color gray400 = fromHex('#b3b3b3');

  static Color gray500 = fromHex('#a2a2a2');

  static Color whiteA7000c = fromHex('#0cffffff');

  static Color blueGray400 = fromHex('#888888');

  static Color redA200 = fromHex('#ff4d4d');

  static Color gray900 = fromHex('#1e1e1e');

  static Color black90078 = fromHex('#78000000');

  static Color cyan100 = fromHex('#b8eee5');

  static Color black90099 = fromHex('#99000000');

  static Color whiteA70001 = fromHex('#fffdfd');

  static Color whiteA700 = fromHex('#ffffff');

  static Color gray70001 = fromHex('#5b5b5b');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
