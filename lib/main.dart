//import 'package:custom_painter/src/pages/pages.dart';
import 'package:custom_painter/src/pages/pages.dart';
//import 'package:custom_painter/src/pages_animaciones/pages_animaciones.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(useMaterial3: true),
        home: const LauncherPage());
  }
}
