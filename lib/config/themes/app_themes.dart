import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Color.fromARGB(255, 160, 161, 160),
    fontFamily: 'Muli',
    appBarTheme: appBarTheme()
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    color: Color.fromARGB(255, 141, 37, 37),
    elevation: 0,
    centerTitle: true,
    iconTheme: IconThemeData(color: Color.fromARGB(255, 139, 114, 114)),
    titleTextStyle: TextStyle(color: Color.fromARGB(255, 92, 71, 71), fontSize: 18),
  );
}