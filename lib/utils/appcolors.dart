import 'dart:ui';

class FlutterColor extends Color {
  static int _getColorFromHex(String flutterColor) {
    flutterColor = flutterColor.toUpperCase().replaceAll("#", "");
    if (flutterColor.length == 6) {
      flutterColor = "FF" + flutterColor;
    }
    return int.parse(flutterColor, radix: 16);
  }

  FlutterColor._(final String flutterColor) : super(_getColorFromHex(flutterColor));

  static Color primaryColor = FlutterColor._("#05774A");
  static Color dividerColor = FlutterColor._("#15CC6C");
  static Color personIconColor = FlutterColor._("#24E499");
  static Color hintColor = FlutterColor._("#A7E18E");
  static Color txtGreyColor = FlutterColor._("#8D908C");
  static Color signupFormBorderColor = FlutterColor._("#8D908C");
  
}
