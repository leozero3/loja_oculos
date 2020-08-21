import 'package:fl_store/view/layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class PromoBanners extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var swiper = Swiper(
      itemCount: 3,
      itemBuilder: (BuildContext context, int i){
        return Container(
//          margin: EdgeInsets.only(left: 20, right: 20),
//          width: MediaQuery.of(context).size.width - 40,
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
      },
      autoplay: true,
      duration: 700,
      pagination: SwiperPagination(),
      scale: .9,
      viewportFraction: 0.85,
      curve: Curves.easeInOutBack,
//      layout: SwiperLayout.TINDER ,
//      itemHeight: 200,
//      itemWidth: MediaQuery.of(context).size.width - 40,
      );
    return swiper;
  }
}
