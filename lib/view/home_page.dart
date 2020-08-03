import 'package:fl_store/view/layout.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {

    var content = Column();

    return Layout.render(
        context,
        content,
      bottomItemSelected: 0,
    );
  }
}
