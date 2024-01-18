import 'package:flutter/material.dart';

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
