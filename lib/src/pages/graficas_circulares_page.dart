import 'package:custom_painter/src/widgets/radial_progress.dart';
import 'package:flutter/material.dart';

class GraficasCircularesPages extends StatefulWidget {
  const GraficasCircularesPages({super.key});

  @override
  State<GraficasCircularesPages> createState() =>
      _GraficasCircularesPagesState();
}

class _GraficasCircularesPagesState extends State<GraficasCircularesPages> {
  double porcentaje = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            porcentaje += 10;
            if (porcentaje > 100) porcentaje = 0;
          });
        },
        child: const Icon(Icons.refresh),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.red,
          child: RadialProgress(porcentaje: porcentaje),
        ),
        //child: Text("Porcentaje $porcentaje %"),
      ),
    );
  }
}
