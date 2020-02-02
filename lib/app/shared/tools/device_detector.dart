import 'dart:io';
import 'dart:ui' as ui;

class DeviceDetector {
  static double height = ui.window.physicalSize.height;

  static bool get isIphone5 => 1136 == height && Platform.isIOS;
  static bool get isIphone5S => isIphone5;
  static bool get isIphone5C => isIphone5;

  static bool get isIphone6 => 1334 == height && Platform.isIOS;
  static bool get isIphone6S => isIphone6;
  static bool get isIphone7 => isIphone6;
  static bool get isIphone8 => isIphone6;

  static bool get isIphone6Plus =>
      [1920, 2208].contains(height) && Platform.isIOS;
  static bool get isIphone6SPlus => isIphone6Plus;
  static bool get isIphone7Plus => isIphone6Plus;
  static bool get isIphone8Plus => isIphone6Plus;

  static bool get isIphoneX => 2436 == height && Platform.isIOS;
  static bool get isIphoneXS => isIphoneX;
  static bool get isIphone11Pro => isIphoneX;

  static bool get isIphoneXSMax => 2688 == height && Platform.isIOS;
  static bool get isIphone11ProMax => isIphoneXSMax;

  static bool get isIphoneXR => 1792 == height && Platform.isIOS;
  static bool get isIphone11 => isIphoneXR;

  static bool get isIphoneWithNotch => isIphoneX || isIphoneXSMax || isIphoneXR;
}
