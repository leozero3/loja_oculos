import 'package:fl_store/view/layout.dart';
import 'package:fl_store/view/login/cadastro_page.dart';
import 'package:fl_store/view/login/login_recuperar.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  static String tag = '/loginPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Layout.secundary(),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/bg-image.png'),
              fit: BoxFit.cover,
            )),
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                    top: 100, left: 40, right: 40, bottom: 20),
                child: Image.asset('assets/images/logo-sem-fundo.png'),
              ),
              Expanded(
                  child: ListView(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(left: 20, right: 20),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Layout.Light(),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 15,
                              spreadRadius: 2,
                              color: Layout.Dark(.4),
                              offset: Offset(0, 5))
                        ]),
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Email',
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Layout.primary()))),
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Senha',
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Layout.primary()))),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: FlatButton(
                              onPressed: () => Navigator.of(context).pushNamed(LoginRecuperarPage.tag),

                              child: Text(
                                'Esqueci minha senha',
                                style: TextStyle(color: Layout.secundaryDark()),
                              )),
                        ),
                        SizedBox(height: 20),
                        SizedBox(height: 50, width: double.infinity,
                          child: FlatButton(
                              onPressed: () => null,
                              color: Layout.primary(),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                              child: Text(
                                'Entrar',
                                style: Theme.of(context).textTheme.bodyText2.copyWith(
                                  color: Layout.Light(),
                                  fontSize: 18,
                                ),
                              )),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, right: 20),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: FlatButton(
                          onPressed: ()=> Navigator.of(context).pushNamed(CadastroPage.tag),
                          child: Text('Não tem uma conta? Cadastre-se')),
                    ),
                  )
                ],
              ))
            ],
          )
        ],
      ),
    );
  }
}