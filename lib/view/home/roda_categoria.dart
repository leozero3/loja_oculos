import 'package:fl_store/view/layout.dart';
import 'package:flutter/material.dart';

class RodaCategoria extends StatefulWidget {
  @override
  _RodaCategoriaState createState() => _RodaCategoriaState();
}

class _RodaCategoriaState extends State<RodaCategoria> with SingleTickerProviderStateMixin{

  AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 1000));
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
          turns: Tween(begin: 0.0,end: -1.0).animate(_controller),
          child: GestureDetector(
            onTap: (){
              _controller.forward().then((e) => _controller.reset());
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 10, bottom: 10),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.deepOrange),
              child: Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius:
                        BorderRadius.circular(MediaQuery.of(context).size.width),
                    child: Image.asset('assets/images/bg-catwheel.png', fit: BoxFit.cover,),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
