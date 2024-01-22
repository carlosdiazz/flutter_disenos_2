import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'package:flutter_svg/svg.dart';

class SlideShow extends StatelessWidget {
  final List<Widget> slides;
  final bool puntosArriba;
  final Color colorPrimario;
  final Color colorSecundario;
  final double bulletPrimario;
  final double bulletSecundario;
  const SlideShow(
      {super.key,
      this.slides = const [],
      this.puntosArriba = false,
      this.colorSecundario = Colors.grey,
      this.colorPrimario = Colors.blue,
      this.bulletPrimario = 20.0,
      this.bulletSecundario = 12.0});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => _SlideShowModel(),
      child: SafeArea(
        child: Center(
            child: _CrearEstrucutura(
          puntosArriba: puntosArriba,
          slides: slides,
          colorPrimario: colorPrimario,
          colorSecundario: colorSecundario,
          bulletPrimario: bulletPrimario,
          bulletSecundario: bulletSecundario,
        )),
      ),
    );
  }
}

class _CrearEstrucutura extends StatelessWidget {
  final bool puntosArriba;
  final List<Widget> slides;
  final Color colorPrimario;
  final Color colorSecundario;
  final double bulletPrimario;
  final double bulletSecundario;

  const _CrearEstrucutura(
      {required this.puntosArriba,
      required this.slides,
      required this.colorPrimario,
      required this.colorSecundario,
      required this.bulletPrimario,
      required this.bulletSecundario});

  @override
  Widget build(BuildContext context) {
    Provider.of<_SlideShowModel>(context).colorPrimario = colorPrimario;
    Provider.of<_SlideShowModel>(context).colorSecundario = colorSecundario;

    Provider.of<_SlideShowModel>(context).bulletPrimario = bulletPrimario;
    Provider.of<_SlideShowModel>(context).bulletSecundario = bulletSecundario;

    return Column(
      children: [
        if (puntosArriba)
          _Dots(
            slides.length,
          ),
        Expanded(child: _Slides(slides)),
        if (!puntosArriba)
          _Dots(
            slides.length,
          ),
      ],
    );
  }
}

class _Dots extends StatelessWidget {
  final int slides;

  const _Dots(
    this.slides,
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      //color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(slides, (index) => _Dot(index)),
      ),
    );
  }
}

class _Dot extends StatelessWidget {
  final int index;

  const _Dot(
    this.index,
  );

  @override
  Widget build(BuildContext context) {
    final ssModel = Provider.of<_SlideShowModel>(context);
    double tamano = 0;
    Color color = Colors.white;

    if (ssModel.currentPage >= index - 0.5 &&
        ssModel.currentPage < index + 0.5) {
      tamano = ssModel._bulletPrimario;
      color = ssModel.colorPrimario;
    } else {
      tamano = ssModel._bulletSecundario;
      color = ssModel.colorSecundario;
    }

    return AnimatedContainer(
      width: tamano,
      height: tamano,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      duration: const Duration(milliseconds: 200),
    );
  }
}

class _Slides extends StatefulWidget {
  final List<Widget> slides;
  const _Slides(this.slides);

  @override
  State<_Slides> createState() => _SlidesState();
}

class _SlidesState extends State<_Slides> {
  final pageViewController = PageController();

  @override
  void initState() {
    pageViewController.addListener(() {
      Provider.of<_SlideShowModel>(context, listen: false).currentPage =
          pageViewController.page ?? 0;
    });
    super.initState();
  }

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: PageView(
        controller: pageViewController,
        children: widget.slides.map((slide) => _Slide(slide: slide)).toList(),
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final Widget slide;
  const _Slide({required this.slide});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(30),
        child: slide);
  }
}

class _SlideShowModel with ChangeNotifier {
  double _currentPage = 0;
  Color _colorPrimario = Colors.blue;
  Color _colorSecundario = Colors.grey;
  double _bulletPrimario = 12.0;
  double _bulletSecundario = 12.0;

  //!GET Set BulletPrimario
  double get bulletPrimario => _bulletPrimario;
  set bulletPrimario(double bullet) {
    _bulletPrimario = bullet;
    //notifyListeners();
  }

  //!GET Set BulletPrimario
  double get bulletSecundario => _bulletSecundario;
  set bulletSecundario(double bullet) {
    _bulletSecundario = bullet;
    //notifyListeners();
  }

  //!Get Set Current Page
  double get currentPage => _currentPage;
  set currentPage(double currentPage) {
    _currentPage = currentPage;
    notifyListeners();
  }

  //!Get Set ColorPrimario
  Color get colorPrimario => _colorPrimario;
  set colorPrimario(Color color) {
    _colorPrimario = color;
    //notifyListeners();
  }

  //!Get Set ColorSecundario
  Color get colorSecundario => _colorSecundario;
  set colorSecundario(Color color) {
    _colorSecundario = color;
    //notifyListeners();
  }
}
