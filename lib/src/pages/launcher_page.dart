import 'package:custom_painter/src/routes/routes.dart';
import 'package:custom_painter/src/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class LauncherPage extends StatelessWidget {
  const LauncherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Disenos en Flutter - Telefonos 2"),
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
      itemCount: pageRoutes.length,
      itemBuilder: (contex, i) => ListTile(
        leading: FaIcon(pageRoutes[i].icon),
        title: Text(pageRoutes[i].titulo),
        trailing: const Icon(Icons.chevron_right_outlined),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => pageRoutes[i].page));
        },
      ),
    );
  }
}

class _MenuPrincipal extends StatelessWidget {
  const _MenuPrincipal();

  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<ThemeChanger>(context);
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
              trailing: Switch.adaptive(
                  value: appTheme.darkTheme,
                  onChanged: (value) {
                    appTheme.darkTheme = value;
                  }),
            ),
            ListTile(
              leading: const Icon(Icons.light_mode_outlined),
              title: const Text("Custom Theme"),
              trailing: Switch.adaptive(
                  value: appTheme.customTheme,
                  onChanged: (value) {
                    appTheme.customTheme = value;
                  }),
            )
          ],
        ),
      ),
    );
  }
}
