import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeaderCuadrado extends StatelessWidget {
  const HeaderCuadrado({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(height: 300, color: const Color(0xff615AAB));
  }
}

class HeaderBordesRedondeados extends StatelessWidget {
  const HeaderBordesRedondeados({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: const BoxDecoration(
          color: Color(0xff615AAB),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(70),
            bottomRight: Radius.circular(70),
          )),
    );
  }
}

class HeaderDiagonal2 extends StatelessWidget {
  const HeaderDiagonal2({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
        angle: -0.2,
        child: Container(height: 300, color: const Color(0xff615AAB)));
  }
}

class HeaderDiagonal extends StatelessWidget {
  const HeaderDiagonal({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      //color: const Color(0xff615AAB),
      child: CustomPaint(
        painter: _HeaderDiagonalPainter(),
      ),
    );
  }
}

class _HeaderDiagonalPainter extends CustomPainter {
  @override
  void paint(canvas, Size size) {
    final lapiz = Paint();
    lapiz.color = const Color(0xff615AAB);
    //lapiz.style = PaintingStyle.stroke; //Asi solo dibuja el border
    lapiz.style = PaintingStyle.fill; //Asi rellena lo de adentro
    lapiz.strokeWidth = 30; //El ancho del pincel

    final path = Path();
    //Dibujar con el path y el lapiz
    path.moveTo(0, size.height * 0.35);
    path.lineTo(size.width, size.height * 0.30);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    //path.lineTo(0, size.height * 0.5);

    //Aqui pinta el Draw
    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderTriangular extends StatelessWidget {
  const HeaderTriangular({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      //color: const Color(0xff615AAB),
      child: CustomPaint(
        painter: _HeaderTriangularPainter(),
      ),
    );
  }
}

class _HeaderTriangularPainter extends CustomPainter {
  @override
  void paint(canvas, Size size) {
    final lapiz = Paint();
    lapiz.color = const Color(0xff615AAB);
    //lapiz.style = PaintingStyle.stroke; //Asi solo dibuja el border
    lapiz.style = PaintingStyle.fill; //Asi rellena lo de adentro
    lapiz.strokeWidth = 30; //El ancho del pincel

    final path = Path();
    //Dibujar con el path y el lapiz
    path.moveTo(size.height, 0);
    path.lineTo(0, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, 0);
    //path.lineTo(0, 0);
    //path.lineTo(0, size.height * 0.5);

    //Aqui pinta el Draw
    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderPico extends StatelessWidget {
  const HeaderPico({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      //color: const Color(0xff615AAB),
      child: CustomPaint(
        painter: _HeaderPicoPainter(),
      ),
    );
  }
}

class _HeaderPicoPainter extends CustomPainter {
  @override
  void paint(canvas, Size size) {
    final lapiz = Paint();
    lapiz.color = const Color(0xff615AAB);
    //lapiz.style = PaintingStyle.stroke; //Asi solo dibuja el border
    lapiz.style = PaintingStyle.fill; //Asi rellena lo de adentro
    lapiz.strokeWidth = 30; //El ancho del pincel

    final path = Path();
    //Dibujar con el path y el lapiz
    path.lineTo(0, size.height * 0.30);
    path.lineTo(size.width * 0.5, size.height * 0.38);
    path.lineTo(size.width, size.height * 0.30);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderCurvo extends StatelessWidget {
  const HeaderCurvo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      //color: const Color(0xff615AAB),
      child: CustomPaint(
        painter: _HeaderCurvoPainter(),
      ),
    );
  }
}

class _HeaderCurvoPainter extends CustomPainter {
  @override
  void paint(canvas, Size size) {
    final lapiz = Paint();
    lapiz.color = const Color(0xff615AAB);
    //lapiz.style = PaintingStyle.stroke; //Asi solo dibuja el border
    lapiz.style = PaintingStyle.fill; //Asi rellena lo de adentro
    lapiz.strokeWidth = 30; //El ancho del pincel

    final path = Path();
    //Dibujar con el path y el lapiz
    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(
        size.width * 0.5, size.height * 0.4, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);
    //path.lineTo(size.width, size.height * 0.30);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderWave extends StatelessWidget {
  const HeaderWave({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      //color: const Color(0xff615AAB),
      child: CustomPaint(
        painter: _HeaderWavePainter(),
      ),
    );
  }
}

class _HeaderWavePainter extends CustomPainter {
  @override
  void paint(canvas, Size size) {
    final lapiz = Paint();
    lapiz.color = const Color(0xff615AAB);
    //lapiz.style = PaintingStyle.stroke; //Asi solo dibuja el border
    //lapiz.style = PaintingStyle.fill; //Asi rellena lo de adentro
    lapiz.strokeWidth = 30; //El ancho del pincel

    final path = Path();
    //Dibujar con el path y el lapiz
    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.3,
        size.width * 0.5, size.height * 0.25);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.2, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);
    //path.lineTo(size.width, size.height * 0.30);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class IconHeader extends StatelessWidget {
  final IconData icon;
  final String titulo;
  final String subTitulo;
  final Color color1;
  final Color color2;

  const IconHeader(
      {super.key,
      required this.icon,
      required this.titulo,
      required this.subTitulo,
      this.color1 = const Color(0xff526BF6),
      this.color2 = const Color(0xff67ACF2)});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      _IconHeaderBackground(color1, color2),
      Positioned(
          top: -50,
          left: -70,
          child: FaIcon(
            FontAwesomeIcons.circlePlus,
            size: 250,
            color: Colors.white.withOpacity(0.2),
          )),
      Column(
        children: [
          const SizedBox(
            height: 80,
            width: double.infinity,
          ),
          Text(
            subTitulo,
            style:
                TextStyle(fontSize: 20, color: Colors.white.withOpacity(0.7)),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            titulo,
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white.withOpacity(0.7)),
          ),
          const SizedBox(
            height: 20,
          ),
          FaIcon(icon, size: 80, color: Colors.white)
        ],
      )
    ]);
  }
}

class _IconHeaderBackground extends StatelessWidget {
  const _IconHeaderBackground(this.color1, this.color2);
  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 300,
        decoration: BoxDecoration(
            borderRadius:
                const BorderRadius.only(bottomLeft: Radius.circular(100)),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [color1, color2],
            )));
  }
}
