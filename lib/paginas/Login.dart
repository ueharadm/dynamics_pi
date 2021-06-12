//import 'dart:html';

import 'package:dynamics_pi/main.dart';
import 'package:dynamics_pi/modelos/layout.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'Aulas.dart';

String _loggedUser = "";
String _loggedUserPassword = "";
//Use DataBase to get _validUsers and _validPassword
String _validUser = "teste@email.com";
String _validPassword = "senhateste";

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


  @override
  Widget build(BuildContext context) {
    return Layout.render(
      content: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Icon(FontAwesomeIcons.fastForward, color: Colors.blueAccent),
                SizedBox(width: 10),
                Text('Dynamics SCRUM',
                    style: TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      color: Colors.blueAccent,
                    )),
              ],
            ),
          ),
          Expanded(
            flex: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Bem-vindo!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(height: 20),
                Text('Informe seus dados de acesso para entrar no aplicativo',
                    style: TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                    )),
                SizedBox(height: 20),
                TextFormField(
                  onChanged: (user){
                    _loggedUser = user;
                  },
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  obscureText: true,
                  onChanged: (password){
                    _loggedUserPassword = password;
                  },
                  decoration: InputDecoration(
                    hintText: 'Senha',
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () => {
                    if(_loggedUser != _validUser || _loggedUserPassword != _validPassword){
                        showDialog<bool>(
                        context: context,
                        barrierDismissible: false,
                        builder: (context) => AlertDialog(
                        title: Text('Email ou senha incorretos!'),
                        actions: [ElevatedButton(onPressed: () {
                        Navigator.pop(context,false);
                        }, style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.lightBlueAccent)),
                        child: Text('Ok')),],
                        ))
                    }
                    else{
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Inicio();
                      }))
                    },
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.black.withOpacity(.2)),
                    shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder()),
                  ),
                  child: Text('Entrar',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      )),
                  //shape: RoundedRectangleBorder(
                  //borderRadius: BorderRadius.circular(25),
                ),
                Text('Esqueceu sua senha?',
                    style: TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                    ))
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text('Ainda não tem uma conta? ',
                    style: TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                    )),
                Text('Criar uma',
                    style: TextStyle(
                      color: Color(0xFFFF7052),
                      fontStyle: FontStyle.italic,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
  String getLoggedUser(){
    return _loggedUser;
  }
}

