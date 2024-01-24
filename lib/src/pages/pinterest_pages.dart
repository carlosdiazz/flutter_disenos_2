import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:custom_painter/src/widgets/pinterest_menu.dart';
import 'package:provider/provider.dart';

class PinterestPage extends StatelessWidget {
  const PinterestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => _MenuModel(),
      child: const Scaffold(
        body: Stack(
          children: [
            PinterestGrid(),
            _PinterestMenuLocation(),
          ],
        ),
        //body: PinterestGrid(),
        //body: PinterestMenu(),
      ),
    );
  }
}

class _PinterestMenuLocation extends StatelessWidget {
  const _PinterestMenuLocation();

  @override
  Widget build(BuildContext context) {
    final widthPantalla = MediaQuery.of(context).size.width;
    final mostrar = Provider.of<_MenuModel>(
      context,
    ).mostrar;

    final List<PinterestButton> items = [
      PinterestButton(
          onPressed: () {
            print("Boton 1");
          },
          icon: Icons.piano),
      PinterestButton(
          onPressed: () {
            print("Boton 2");
          },
          icon: Icons.rtt),
      PinterestButton(
          onPressed: () {
            print("Boton 3");
          },
          icon: Icons.question_answer),
      PinterestButton(
          onPressed: () {
            print("Boton 4");
          },
          icon: Icons.abc)
    ];

    return Positioned(
        bottom: 30,
        child: SizedBox(
            width: widthPantalla,
            child: Align(
                child: PinterestMenu(
              items: items,
              mostrar: mostrar,
              activeColor: Colors.green,
            ))));
  }
}

class PinterestGrid extends StatefulWidget {
  const PinterestGrid({super.key});

  @override
  State<PinterestGrid> createState() => _PinterestGridState();
}

class _PinterestGridState extends State<PinterestGrid> {
  final List<int> items = List.generate(200, (index) => index);
  double scrollAnterior = 0;

  ScrollController controller = ScrollController();

  @override
  void initState() {
    controller.addListener(() {
      //print("ScrollListener ${controller.offset}");
      if (controller.offset > scrollAnterior && controller.offset > 150) {
        Provider.of<_MenuModel>(context, listen: false).mostrar = false;
      } else {
        Provider.of<_MenuModel>(context, listen: false).mostrar = true;
      }
      scrollAnterior = controller.offset;
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      controller: controller,
      crossAxisCount: 3,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      itemCount: items.length,
      itemBuilder: (context, index) {
        if (index == 1) {
          return Column(
            children: [
              const SizedBox(
                height: 50,
                width: 50,
              ),
              _PinterestItem(
                index: items[index],
              )
            ],
          );
        }
        return _PinterestItem(
          index: items[index],
        );
      },
    );
  }
}

class _PinterestItem extends StatelessWidget {
  final int index;
  const _PinterestItem({required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(1),
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(30)),
      width: 200,
      height: 200,
    );
  }
}

class _MenuModel with ChangeNotifier {
  bool _mostrar = true;

  bool get mostrar => _mostrar;

  set mostrar(bool valor) {
    _mostrar = valor;
    notifyListeners();
  }
}
