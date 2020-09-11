import 'package:fl_store/view/favoritos/favoritos_page.dart';
import 'package:fl_store/view/home/home_page.dart';
import 'package:fl_store/view/login/login_page.dart';
import 'package:fl_store/view/perfil/perfil_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Layout {
  static Widget render(
    BuildContext context,
    Widget child, {
    Widget floatingActionButton,
    int bottomItemSelected,
  }) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bg-image.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(30, 20, 10, 20),
                        child: GestureDetector(
                          child: FaIcon(
                            FontAwesomeIcons.userCog,
                            color: Layout.Light(),
                            size: 24,
                          ),
                          onTap:() => Navigator.of(context).pushNamed(PerfilPage.tag),
                        )
                      ),
                      Expanded(
                          child: GestureDetector(
                            child: Text(
                        'Leonardo Gonzalez',
                        style: Theme.of(context).textTheme.subtitle1.copyWith(
                              color: Layout.Light(),
                              fontSize: 18,
                              fontStyle: FontStyle.italic),
                      ),
                            onTap: () => Navigator.of(context).pushNamed(PerfilPage.tag),
                          )),
                      Padding(
                        padding: EdgeInsets.only(right: 30),
                        child: FaIcon(
                          FontAwesomeIcons.shoppingBag,
                          color: Layout.primaryLight(),
                          size: 24,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(child: child)
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: floatingActionButton,
      backgroundColor: Layout.secundary(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.umbrellaBeach,
              size: 30,
            ),
            title: Text('Inicio'),
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.solidStar,
              size: 30,
            ),
            title: Text('Compras'),
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.solidHeart,
              size: 30,
            ),
            title: Text('Favoritos'),
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.signOutAlt,
              size: 30,
            ),
            title: Text('Sair'),
          ),
        ],
        currentIndex: bottomItemSelected ?? 0,
        selectedItemColor: (bottomItemSelected == null)
            ? Layout.Dark(.3)
            : Layout.primaryLight(),
        unselectedItemColor: Layout.Dark(.3),
        backgroundColor: Layout.Light(),
        type: BottomNavigationBarType.fixed,
        onTap: (int i) {
          switch (i) {
            case 0:
              Navigator.of(context).pushNamed(HomePage.tag);
              break;
            case 2:
              Navigator.of(context).pushNamed(FavoritosPage.tag);
              break;
            case 3:
              Navigator.of(context).pushNamed(LoginPage.tag);
              break;
          }
        },
      ),
    );
  }

  static Color primary([double opacity = 1]) =>
      Color(0xff195738).withOpacity(opacity);

  static Color primaryLight([double opacity = 1]) =>
      Color(0xff007d40).withOpacity(opacity);

  static Color primaryDark([double opacity = 1]) =>
      Color(0xff123D27).withOpacity(opacity);

  static Color secundary([double opacity = 1]) =>
      Color(0xffddc199).withOpacity(opacity);

  static Color secundaryLight([double opacity = 1]) =>
      Color(0xffE0CF9D).withOpacity(opacity);

  static Color secundaryDark([double opacity = 1]) =>
      Color(0xffce9150).withOpacity(opacity);

  static Color secundaryHight([double opacity = 1]) =>
      Color(0xffFDAC25).withOpacity(opacity);

  static Color Light([double opacity = 1]) =>
      Color(0xfff0ece1).withOpacity(opacity);

  static Color Dark([double opacity = 1]) =>
      Color(0xff333333).withOpacity(opacity);
}
