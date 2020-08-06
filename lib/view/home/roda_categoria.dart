import 'dart:math';
import 'package:fl_store/view/layout.dart';
import 'package:flutter/material.dart';

class RodaCategoria extends StatefulWidget {
  @override
  _RodaCategoriaState createState() => _RodaCategoriaState();
}

class _RodaCategoriaState extends State<RodaCategoria>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  //para tween 1 = 360º
  //para transform.rotate = pi * 2 = 360º

  double _startDeg = 0.0;
  double _endDeg = 0.0;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        /// SOMBRAS DA RODA ----------------------------------------------------
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(top: 10, bottom: 10),
          decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
            BoxShadow(
                blurRadius: 3,
                spreadRadius: 2,
                offset: Offset(2, 0),
                color: Layout.Dark(.4))
          ]),
        ),

        ///ANIMAÇÃO RODA -------------------------------------------------------
        RotationTransition(
          turns: Tween(begin: _startDeg, end: _endDeg).animate(_controller),
          child: GestureDetector(
            onTap: () {
              _controller.reset();
              _startDeg = _endDeg;
              _endDeg += 0.25;

              _controller.forward();
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 10, bottom: 10),
              decoration: BoxDecoration(shape: BoxShape.circle),
              child: Stack(
                children: _getCategorias(),
              ),
            ),
          ),
        ),
      ],
    );
  }

  List<Widget> _getCategorias() {
    List<Widget> result = [];

    result.add(
      ClipRRect(
        borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width),
        child: Image.asset(
          'assets/images/bg-catwheel.png',
          fit: BoxFit.cover,
        ),
      ),
    );

    for (Map<String, dynamic> item in _getListaCategorias()) {
      result.add(
        Transform.rotate(
          angle: pi * 2,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Icon(
                    item['icon'],
                    color: Colors.white,
                    size: 32,
                  ),
                ),
                Text(
                  item['text'],
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2
                      .copyWith(color: Layout.Light()),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return result;
  }

  /// Model de itens para serem impressos na roda
  List<Map<String, dynamic>> _getListaCategorias() {
    return [
      {
        "id": 1,
        "icon": Icons.favorite,
        "text": 'Estilo',
      },
      {
        "id": 2,
        "icon": Icons.filter_drama,
        "text": 'Teen',
      },
      {
        "id": 3,
        "icon": Icons.flight,
        "text": 'Viagem',
      },
      {
        "id": 4,
        "icon": Icons.store_mall_directory,
        "text": 'Trabalho',
      },
      {
        "id": 5,
        "icon": Icons.style,
        "text": 'Casual',
      },
      {
        "id": 6,
        "icon": Icons.supervised_user_circle,
        "text": 'Executivo',
      },
      {
        "id": 7,
        "icon": Icons.switch_video,
        "text": 'Esporte',
      },
      {
        "id": 8,
        "icon": Icons.thumb_up,
        "text": 'Classico',
      },
    ];
  }
}
