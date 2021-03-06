import 'package:fl_store/view/home/destaques.dart';
import 'package:fl_store/view/home/promo_banners.dart';
import 'package:fl_store/view/home/roda_categoria.dart';
import 'package:fl_store/view/layout.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String tag = '/home-page';

  @override
  Widget build(BuildContext context) {
    var content = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        /// PROMOÇÃO -----------------------------------------------------------
        Expanded(
          flex: 1,
          child: PromoBanners(

          ),
        ),

        SizedBox(height: 20),
        /// PRODUTOS -----------------------------------------------------------
        Expanded(
          flex: 2,
          child: HomeDestaques(), ///import destaques
        ),

        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(
            'Categorias',
            style: Theme.of(context).textTheme.headline6.copyWith(
                  color: Layout.Light(),
                ),
          ),
        ),
        Container(
          height: 90,
          child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            /// RODA imp** -----------------------------------------------------
            child: RodaCategoria(),
          ),
        )
      ],
    );

    ///
    return Layout.render(
      context,
      content,
      bottomItemSelected: 0,
    );
  }
}
