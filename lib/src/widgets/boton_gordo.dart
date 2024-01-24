import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BotonGordo extends StatelessWidget {
  final IconData icon;
  final String texto;
  final Color color1;
  final Color color2;
  final void Function() onPress;

  const BotonGordo(
      {super.key,
      this.icon = Icons.abc,
      required this.texto,
      this.color1 = Colors.blue,
      this.color2 = Colors.blueGrey,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Stack(
          children: [
            _BotonGordoBackground(color1, color2, icon),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 100,
                  width: 40,
                ),
                FaIcon(icon, color: Colors.white, size: 40),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Text(
                    texto,
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                FaIcon(icon, color: Colors.white, size: 40),
                const SizedBox(
                  width: 40,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _BotonGordoBackground extends StatelessWidget {
  final Color color1;
  final Color color2;
  final IconData icon;
  const _BotonGordoBackground(this.color1, this.color2, this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(colors: [color1, color2]),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: const Offset(
                4,
                6,
              ),
              blurRadius: 10,
            )
          ]),
      //Para que nos e corte y tome el tamano del containe
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Stack(
          children: [
            Positioned(
                top: -20,
                right: -20,
                child: FaIcon(
                  icon,
                  size: 150,
                  color: Colors.white.withOpacity(0.2),
                ))
          ],
        ),
      ),
    );
  }
}
