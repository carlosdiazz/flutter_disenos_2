//import 'package:custom_painter/src/pages/pages.dart';
import 'package:custom_painter/src/models/layout_model.dart';
import 'package:custom_painter/src/pages/launcher_tablet_page.dart';
import 'package:custom_painter/src/pages/pages.dart';
import 'package:custom_painter/src/theme/theme.dart';
import 'package:custom_painter/src2/src2.dart';
//import 'package:custom_painter/src/pages_animaciones/pages_animaciones.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => ThemeChanger()),
    ChangeNotifierProvider(create: (_) => LayoutModel())
  ], child: const MainApp2()));
}

//App De Zapatos
class MainApp2 extends StatelessWidget {
  const MainApp2({super.key});

  @override
  Widget build(BuildContext context) {
    final currentTheme = Provider.of<ThemeChanger>(context).currentTheme;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: currentTheme,
        home: const ZapatoPage());
  }
}

//App de Disenos
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final currentTheme = Provider.of<ThemeChanger>(context).currentTheme;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: currentTheme,
      home: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          final screenSize = MediaQuery.of(context).size;
          if (screenSize.width > 500) {
            return LauncherTabletPage();
          } else {
            return LauncherPage();
          }
        },
      ),
    );
  }
}
