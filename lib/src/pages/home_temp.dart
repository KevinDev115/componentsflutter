import 'package:flutter/material.dart';

class HomeTempPage extends StatelessWidget {
  final options = ['1', '2', '3', '4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components temp'),
      ),
      body: ListView(children: _createItemsShort()),
    );
  }

  List<Widget> _createItems() {
    List<Widget> list = [];

    for (String opt in options) {
      final itemTmp = ListTile(
        title: Text(opt),
      );
      list..add(itemTmp)..add(Divider());
    }

    return list;
  }

  List<Widget> _createItemsShort() => options
      .map((item) => Column(
            children: <Widget>[
              ListTile(
                title: Text(item),
                subtitle: Text('subtitle'),
                leading: Icon(Icons.account_box),
                trailing: Icon(Icons.keyboard_arrow_right_outlined),
                onTap: () {},
              ),
              Divider()
            ],
          ))
      .toList();
}
