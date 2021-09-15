import 'package:flutter/material.dart';
import 'package:componentsflutter/src/providers/menu_provider.dart';
import 'package:componentsflutter/src/utils/icon_string_util.dart';

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
    // menuProvider.loadData()
    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _createItems(snapshot.data),
        );
      },
    );
  }

  List<Widget> _createItems(data) {
    final List<Widget> options = [];

    data.forEach((opt) {
      final tmp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right_outlined, color: Colors.blue),
        onTap: () {},
      );

      options..add(tmp)..add(Divider());
    });

    return options;
  }
}
