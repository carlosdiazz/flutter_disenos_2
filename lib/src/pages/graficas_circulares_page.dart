import 'package:custom_painter/src/widgets/radial_progress.dart';
import 'package:flutter/material.dart';

class GraficasCircularesPages extends StatefulWidget {
  const GraficasCircularesPages({super.key});

  @override
  State<GraficasCircularesPages> createState() =>
      _GraficasCircularesPagesState();
}

class _GraficasCircularesPagesState extends State<GraficasCircularesPages> {
  double porcentaje = 30.0;
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
          child: const Icon(Icons.add),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomRadialProgress(
                  porcentaje: porcentaje,
                  color: Colors.black,
                ),
                CustomRadialProgress(
                  porcentaje: porcentaje,
                  color: Colors.blue,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomRadialProgress(
                  porcentaje: porcentaje,
                  color: Colors.pink,
                ),
                CustomRadialProgress(
                  porcentaje: porcentaje,
                  color: Colors.yellow,
                ),
              ],
            )
          ],
        ));
  }
}

class CustomRadialProgress extends StatelessWidget {
  final Color color;
  const CustomRadialProgress(
      {super.key, required this.porcentaje, required this.color});

  final double porcentaje;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 150,
      child: RadialProgress(
        porcentaje: porcentaje,
        colorPrimario: color,
      ),
    );
  }
}
