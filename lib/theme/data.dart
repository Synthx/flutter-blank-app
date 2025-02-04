import 'package:blank_app/theme/theme.dart';
import 'package:flutter/material.dart';

ThemeData createThemeData({
  required final Color background,
  required final Color card,
  required final Color text,
  required final Color textBody,
}) {
  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    splashFactory: NoSplash.splashFactory,
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: background,
    cardColor: card,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: background,
      surfaceTintColor: Colors.transparent,
      shadowColor: Colors.black.withValues(alpha: 0.4),
      elevation: 1,
      titleSpacing: kSpacer,
      titleTextStyle: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w700,
        color: text,
      ),
    ),
    tabBarTheme: TabBarTheme(
      labelColor: text,
      labelStyle: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w700,
      ),
      unselectedLabelColor: textBody,
      unselectedLabelStyle: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      indicator: const UnderlineTabIndicator(
        borderRadius: BorderRadius.zero,
        borderSide: BorderSide(
          color: kPrimaryColor,
          width: 2,
        ),
      ),
      indicatorColor: kPrimaryColor,
      indicatorSize: TabBarIndicatorSize.label,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: 1,
      backgroundColor: background,
      selectedItemColor: kPrimaryColor,
      unselectedItemColor: textBody,
      showSelectedLabels: false,
      showUnselectedLabels: false,
    ),
    iconTheme: IconThemeData(
      color: text,
    ),
    dividerTheme: DividerThemeData(
      color: textBody,
      thickness: 2,
      space: 0,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: kPrimaryColor,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        textStyle: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w700,
        color: text,
      ),
      titleMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w500,
        color: text,
      ),
      titleSmall: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: text,
      ),
      bodyMedium: TextStyle(
        fontSize: 15,
        color: textBody,
      ),
      bodySmall: TextStyle(
        fontSize: 13,
        color: textBody,
      ),
    ),
  );
}
