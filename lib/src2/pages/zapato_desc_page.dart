import 'package:custom_painter/src2/src2.dart';
import 'package:flutter/material.dart';

class ZapatoDescPage extends StatelessWidget {
  const ZapatoDescPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(children: [
            Hero(
                tag: "zapato-1",
                child: const ZapatosSizePreview(fullScreen: true)),
            Positioned(
                top: 80,
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  elevation: 0,
                  highlightElevation: 0,
                  child: const Icon(
                    Icons.chevron_left,
                    color: Colors.white,
                    size: 60,
                  ),
                ))
          ]),
          const Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                ZapatoDescripcion(
                  titulo: 'Nike Air Max 720',
                  descripcion:
                      "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                ),
                _MontoByNow(),
                _ColoresYmas(),
                _BotonesLikeSettings()
              ],
            ),
          ))
        ],
      ),
    );
  }
}

class _BotonesLikeSettings extends StatelessWidget {
  const _BotonesLikeSettings();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30),
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _BotonSombreado(Icon(
            Icons.star,
            color: Colors.red,
            size: 25,
          )),
          _BotonSombreado(Icon(
            Icons.add_shopping_cart,
            color: Colors.grey,
            size: 25,
          )),
          _BotonSombreado(Icon(
            Icons.settings,
            color: Colors.grey,
            size: 25,
          ))
        ],
      ),
    );
  }
}

class _BotonSombreado extends StatelessWidget {
  final Icon icon;
  const _BotonSombreado(this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: Colors.black38,
                spreadRadius: -5,
                blurRadius: 20,
                offset: Offset(0, 10))
          ]),
      child: icon,
    );
  }
}

class _ColoresYmas extends StatelessWidget {
  const _ColoresYmas();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: [
          Expanded(
              child: Stack(
            children: [
              Positioned(
                left: 90,
                child: _BotonColor(
                  color: Color(0xff364D56),
                ),
              ),
              Positioned(
                left: 60,
                child: _BotonColor(
                  color: Color(0xff2099f1),
                ),
              ),
              Positioned(
                left: 30,
                child: _BotonColor(
                  color: Color(0xffFFAD29),
                ),
              ),
              _BotonColor(
                color: Color(0xffC6D642),
              ),
            ],
          )),
          //Spacer(),
          BotonNaranja(
            color: Color(0xffFFc657),
            texto: "More relatd items",
            alto: 30,
            ancho: 170,
          )
        ],
      ),
    );
  }
}

class _BotonColor extends StatelessWidget {
  final Color color;
  const _BotonColor({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    );
  }
}

class _MontoByNow extends StatelessWidget {
  const _MontoByNow();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(children: [
        Text(
          '\$180.0',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        BotonNaranja(
          texto: "Buy Now",
          ancho: 120,
          alto: 40,
        )
      ]),
    );
  }
}
