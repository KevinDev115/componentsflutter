import 'package:flutter/material.dart';
import 'package:componentsflutter/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _list(),
    );
  }

  Widget _list() {
    print(menuProvider.options);

    return ListView(
      children: _createItems(),
    );
  }

  List<Widget> _createItems() {
    return [
      ListTile(
        title: Text("hola Mundo"),
      ),
      ListTile(
        title: Text("hola Mundo"),
      ),
    ];
  }
}
