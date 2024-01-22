import 'package:custom_painter/src/widgets/slide_show.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SlideShowPage extends StatelessWidget {
  const SlideShowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: [
        Expanded(child: MiSlideShow()),
        Expanded(child: MiSlideShow()),
        Expanded(child: MiSlideShow())
      ],
    ));
  }
}

class MiSlideShow extends StatelessWidget {
  const MiSlideShow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SlideShow(
        puntosArriba: false,
        colorPrimario: Colors.green,
        bulletPrimario: 25,
        bulletSecundario: 5,
        slides: [
          SvgPicture.asset("assets/svgs/img_1.svg"),
          SvgPicture.asset("assets/svgs/img_2.svg"),
          SvgPicture.asset("assets/svgs/img_3.svg"),
          SvgPicture.asset("assets/svgs/img_4.svg"),
          SvgPicture.asset("assets/svgs/img_5.svg"),
        ]);
  }
}
