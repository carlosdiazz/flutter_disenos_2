//import 'package:custom_painter/src/pages/pages.dart';
import 'package:custom_painter/src/pages/pages.dart';
import 'package:custom_painter/src/theme/theme.dart';
//import 'package:custom_painter/src/pages_animaciones/pages_animaciones.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (_) => ThemeChanger(), child: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final currentTheme = Provider.of<ThemeChanger>(context).currentTheme;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: currentTheme,
        home: const LauncherPage());
  }
}
