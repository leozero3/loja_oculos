import 'package:fl_store/view/layout.dart';
import 'package:flutter/material.dart';

class HomeDestaques extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: PageScrollPhysics(),
        children: List.generate(
            3,
            (int i) => Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      width: MediaQuery.of(context).size.width - 40,
                      decoration: BoxDecoration(
                        color: Layout.secundary(0.9),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        children: <Widget>[
                          Expanded(
                              child: ClipRRect(
                            child: Stack(
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/produtos/prod-1.jpg',
                                  fit: BoxFit.cover,
                                  alignment: Alignment.center,
                                  width: MediaQuery.of(context).size.width - 40,
                                )
                              ],
                            ),
                          ))
                        ],
                      ),
                    ),
                  ],
                )),
      ),
    );
  }
}
