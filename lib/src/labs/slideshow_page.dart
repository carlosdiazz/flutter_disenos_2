import 'package:custom_painter/src/models/slider_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class SlideShowPage extends StatelessWidget {
  const SlideShowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => SliderModel(),
      child: const Scaffold(
        body: Center(
            child: Column(
          children: [Expanded(child: _Slides()), _Dots()],
        )),
      ),
    );
  }
}

class _Dots extends StatelessWidget {
  const _Dots();

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      height: 60,
      //color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [_Dot(0), _Dot(1), _Dot(2)],
      ),
    );
  }
}

class _Dot extends StatelessWidget {
  final int index;
  const _Dot(this.index);

  @override
  Widget build(BuildContext context) {
    double pageViewIndex = Provider.of<SliderModel>(context).currentPage;

    return AnimatedContainer(
      width: 14,
      height: 14,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: (pageViewIndex >= index - 0.5 && pageViewIndex < index + 0.5)
              ? Colors.blue
              : Colors.grey,
          shape: BoxShape.circle),
      duration: const Duration(milliseconds: 200),
    );
  }
}

class _Slides extends StatefulWidget {
  const _Slides();

  @override
  State<_Slides> createState() => _SlidesState();
}

class _SlidesState extends State<_Slides> {
  final pageViewController = PageController();

  @override
  void initState() {
    pageViewController.addListener(() {
      print("Page actual: ${pageViewController.page}");
      //Actualizar el provide, sliderModel
      Provider.of<SliderModel>(context, listen: false).currentPage =
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
      //padding: EdgeInsets.all(10),
      child: PageView(
        controller: pageViewController,
        children: const [
          _Slide(svg: "assets/svgs/img_1.svg"),
          _Slide(svg: "assets/svgs/img_2.svg"),
          _Slide(svg: "assets/svgs/img_3.svg"),
          _Slide(svg: "assets/svgs/img_4.svg"),
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String svg;
  const _Slide({required this.svg});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(30),
        child: SvgPicture.asset(svg));
  }
}
