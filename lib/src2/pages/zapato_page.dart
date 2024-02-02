import 'package:custom_painter/src2/src2.dart';
import 'package:flutter/material.dart';

class ZapatoPage extends StatelessWidget {
  const ZapatoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //    body: CustomAppBar(
      //  texto: "For You",
      //)
      //body: ZapatosSizePreview(),
      body: Column(
        children: [
          const CustomAppBar(texto: "For You"),
          Expanded(
              child: SingleChildScrollView(
                  child: Column(
            children: [
              ZapatosSizePreview(),
              ZapatoDescripcion(
                titulo: 'Nike Air Max 720',
                descripcion:
                    "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
              )
            ],
          ))),
          AgregarCarritoBoton(monto: 150)
        ],
      ),
    );
  }
}
