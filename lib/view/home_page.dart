import 'package:fl_store/view/layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    var content = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Layout.Light(),
            borderRadius: BorderRadius.circular(25),
          ),
          margin: EdgeInsets.only(left: 20, right: 20, top: 70),
          padding: EdgeInsets.all(20),
          width: double.infinity,
          height: 100,
          child: Text('Promoções'),
        ),
        SizedBox(
          height: 20,
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Layout.Light(0.7),
              borderRadius: BorderRadius.circular(25),
            ),
            margin: EdgeInsets.only(left: 20, right: 20, top: 70),
            padding: EdgeInsets.all(20),
            width: double.infinity,
            child: Text('Produtos'),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(
            'Categorias',
            style: Theme.of(context).textTheme.subtitle2.copyWith(
                  color: Layout.Light(),
                ),
          ),
        ),
        Container(
          height: 90,
          color: Colors.blue,
        )
      ],
    );//

    return Layout.render(
      context,
      content,
      bottomItemSelected: 0,
    );
  }
}
