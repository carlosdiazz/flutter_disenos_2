import 'package:custom_painter/src/pages_animaciones/pages_animaciones.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: FadeIn(child: const Text("Animate_do")),
        actions: [
          IconButton(
              onPressed: () {}, icon: const FaIcon(FontAwesomeIcons.twitter)),
          SlideInLeft(
            from: 100,
            child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (_) => const Page2()));
                },
                icon: const Icon(Icons.navigate_next)),
          )
        ],
      ),
      floatingActionButton: ElasticInRight(
        child: FloatingActionButton.extended(
            onPressed: () {}, label: const FaIcon(FontAwesomeIcons.play)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElasticIn(
              delay: const Duration(milliseconds: 1100),
              child: const Icon(
                Icons.new_releases,
                size: 40,
              ),
            ),
            FadeInDown(
              delay: const Duration(milliseconds: 200),
              child: const Text(
                "Titulo",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w200),
              ),
            ),
            FadeInDown(
              delay: const Duration(milliseconds: 800),
              child: const Text(
                "Soy un texto Pequeno",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),
              ),
            )
          ],
        ),
      ),
    );
  }
}
