import 'package:fl_store/view/layout.dart';
import 'package:flutter/material.dart';

class FavoritosPage extends StatelessWidget {

  static String tag = '/favoritos-page';

  @override
  Widget build(BuildContext context) {
    Widget content = ListView.builder(
      itemCount: 7,
        itemBuilder: (BuildContext context, int i) {
          return Container();
        });

    return Layout.render(context, content);
  }
}
