import 'package:flutter/material.dart';
import 'dart:math';

Color randomColor(int base) {
  return Color.fromARGB(
    255,
    (Random().nextInt(256) % (255 - base)) + base,
    (Random().nextInt(256) % (255 - base)) + base,
    (Random().nextInt(256) % (255 - base)) + base,
  );
}
