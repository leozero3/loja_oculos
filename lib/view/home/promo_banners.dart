import 'package:fl_store/view/layout.dart';
import 'package:flutter/material.dart';

class PromoBanners extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      physics: PageScrollPhysics(),
      children: List.generate(3, (int i) {
        return Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          width: MediaQuery.of(context).size.width - 40,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.asset(
              'assets/images/promocoes/promo-${i +1}.png',
              fit: BoxFit.cover,
            ),
          ),
          foregroundDecoration: BoxDecoration(
            border: Border.all(width: 3, color: Layout.Light(), ),
            borderRadius: BorderRadius.circular(25),
          ),
        );
      }),
    );
  }
}
