import 'package:flutter/material.dart';

class ZapatosSizePreview extends StatelessWidget {
  const ZapatosSizePreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Container(
        width: double.infinity,
        height: 430,
        decoration: BoxDecoration(
            color: const Color(0xffFFCF53),
            borderRadius: BorderRadius.circular(50)),
        child: Column(
          children: [
            //Zapato con sombras
            _ZapatoConSombra(),
            //Tallas
            _ZapatoTallas()
          ],
        ),
      ),
    );
  }
}

class _ZapatoTallas extends StatelessWidget {
  const _ZapatoTallas();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _TallaZapatoCaja(7, false),
          _TallaZapatoCaja(7.5, true),
          _TallaZapatoCaja(8, false),
          _TallaZapatoCaja(8.5, false),
          _TallaZapatoCaja(9, true),
          _TallaZapatoCaja(9.5, false)
        ],
      ),
    );
  }
}

class _TallaZapatoCaja extends StatelessWidget {
  const _TallaZapatoCaja(this.numero, this.select);
  final double numero;
  final bool select;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 45,
      height: 45,
      decoration: BoxDecoration(
          color: select ? Colors.amber : Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            if (select)
              BoxShadow(
                  color: Color(0xffF1A23A),
                  blurRadius: 10,
                  offset: Offset(0, 5))
          ]),
      child: Text(
        numero.toString().replaceAll(".0", ""),
        style: TextStyle(
            color: select ? Colors.white : const Color(0xffF1A23A),
            fontSize: 16,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}

class _ZapatoConSombra extends StatelessWidget {
  const _ZapatoConSombra();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(50.0),
      child: Stack(
        children: [
          Positioned(bottom: 20, right: 0, child: _ZapatoSombra()),
          Image(image: AssetImage('assets/imgs/azul.png'))
        ],
      ),
    );
  }
}

class _ZapatoSombra extends StatelessWidget {
  const _ZapatoSombra();

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.5,
      child: Container(
        width: 230,
        height: 120,
        decoration: BoxDecoration(
            //color: Colors.red,
            borderRadius: BorderRadius.circular(100),
            boxShadow: [BoxShadow(color: Color(0xddEAA14E), blurRadius: 40)]),
      ),
    );
  }
}
