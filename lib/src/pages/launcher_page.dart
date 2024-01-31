import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LauncherPage extends StatelessWidget {
  const LauncherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Disenos en Flutter"),
      ),
      body: const _ListaOpciones(),
      drawer: const _MenuPrincipal(),
    );
  }
}

class _ListaOpciones extends StatelessWidget {
  const _ListaOpciones();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      separatorBuilder: (contex, i) => const Divider(
        color: Colors.red,
      ),
      itemCount: 20,
      itemBuilder: (contex, i) => ListTile(
        leading: const FaIcon(FontAwesomeIcons.a),
        title: const Text("Hola Mndi"),
        trailing: const Icon(Icons.chevron_right_outlined),
        onTap: () {},
      ),
    );
  }
}

class _MenuPrincipal extends StatelessWidget {
  const _MenuPrincipal();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              height: 100,
              child: const CircleAvatar(
                child: Text("CJ"),
              ),
            ),
            const Expanded(child: _ListaOpciones()),
            ListTile(
              leading: const Icon(Icons.light_mode_outlined),
              title: const Text("Dark Mode"),
              trailing: Switch.adaptive(value: true, onChanged: (value) {}),
            )
          ],
        ),
      ),
    );
  }
}
