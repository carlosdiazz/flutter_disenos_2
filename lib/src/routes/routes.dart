import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//Propio
import 'package:custom_painter/src/pages/pages.dart';

final pageRoutes = <_Route>[
  //?Page SlidesShow
  _Route(
      icon: FontAwesomeIcons.sliders,
      titulo: "SlidesShow",
      page: const SlideShowPage()),
  //?Page Emergencia
  _Route(
      icon: FontAwesomeIcons.truckMedical,
      titulo: "Emergencia",
      page: const EmergencyPage()),
  //? Page Encabezado
  _Route(
      icon: FontAwesomeIcons.heading,
      titulo: "Encabezado",
      page: const HeadersPage()),
  //? Page Cuadro Animado
  _Route(
      icon: FontAwesomeIcons.peopleCarryBox,
      titulo: "Cuadro Animado",
      page: const AnimacionesPage()),
  //?Barra Progreso
  _Route(
      icon: FontAwesomeIcons.circleNotch,
      titulo: "Barra de Progreso",
      page: const GraficasCircularesPages()),
  //?Pinterest
  _Route(
      icon: FontAwesomeIcons.pinterest,
      titulo: "Pinterest",
      page: const PinterestPage()),
  //?Slivers
  _Route(
      icon: FontAwesomeIcons.mobile,
      titulo: "Slivers",
      page: const SliderListPage())
];

class _Route {
  final IconData icon;
  final String titulo;
  final Widget page;

  _Route({required this.icon, required this.titulo, required this.page});
}
