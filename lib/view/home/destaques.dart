import 'package:fl_store/view/layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                                    'assets/images/produtos/prod-${i + 1}.jpg',
                                    fit: BoxFit.cover,
                                    alignment: Alignment.center,
                                    width:
                                        MediaQuery.of(context).size.width - 40,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: (i % 2 == 0)
                                          ? FlatButton(
                                              child: FaIcon(
                                                FontAwesomeIcons.heart,
                                                color: Layout.Light(),
                                              ),
                                              color: Colors.red[300],
                                              shape: CircleBorder(),
                                              onPressed: () => null,
                                              padding: EdgeInsets.all(10),
                                            )
                                          : FlatButton(
                                              child: FaIcon(
                                                FontAwesomeIcons.solidHeart,
                                                color: Layout.Light(),
                                              ),
                                              color: Colors.red[300],
                                              shape: CircleBorder(),
                                              onPressed: () => null,
                                              padding: EdgeInsets.all(10),
                                            ),
                                    ),
                                  )
                                ],
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Óculos top das galaxias',
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      .copyWith(
                                        color: Layout.Dark(),
                                      ),
                                ),
                                Text(
                                  'mil grau',
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      .copyWith(color: Layout.secundaryDark()),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    'R\$ 579.98',
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        .copyWith(
                                            color: Layout.primary(),
                                            fontSize: 28),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),
      ),
    );
  }
}
