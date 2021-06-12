import 'package:dynamics_pi/paginas/Login.dart';
import 'package:dynamics_pi/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:dynamics_pi/paginas/Aulas.dart';
import 'package:dynamics_pi/paleta_cores.dart';
import 'package:dynamics_pi/widgets/appbar.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Dynamics',
        theme: ThemeData(
          primarySwatch: PaletaCores().lilas,
          textTheme: TextTheme(
            headline1: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'Alata', color: Colors.black),
            headline2: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'Alata', color: Colors.white),
            headline3: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, fontFamily: 'Alata', color: Colors.black),
            headline4: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
            headline5: TextStyle(fontSize: 20, fontWeight: FontWeight.w200, fontFamily: 'Alata', color: Colors.black),
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        //home: Inicio());
        home: LoginPage());
  }
}

class Inicio extends StatefulWidget {
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {

  Future<bool> _onWillPop() async {
    return showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: Text('Deseja acessar com outra conta??'),
        actions: [
          ElevatedButton(onPressed: () {
            Navigator.pop(context,true);
          }, child: Text('Sim')),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context,false);
            },
            child: Text('Não'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
          appBar: AppBarCustomizada(titulo: ''),
          body: Padding(
            padding: const EdgeInsets.all(50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset('utilidades/assets/imagens/Dynamics.png'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () => {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return Aulas();
                        }))
                      },
                      child: Text('Aprender'),
                    ),
                    ElevatedButton(
                      onPressed: () => {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return WelcomeScreen();
                        }))
                      },
                      child: Text('Avaliar'),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }

  void atualiza() {
    setState(() {});
  }
}
/*
class _InicioState extends State<Inicio> {
  final List Aula = [
    {
      "titulo": "Manifesto Ágil",
      "foto": "Scrum.png",
      "descricao":
          "*Lorem* ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Método Ágil",
      "foto": "agile.png",
      "descricao":
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Método Cascata",
      "foto": "waterfall.png",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Ágil vs Cascata",
      "foto": "agilewaterfall.png",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "O que é SCRUM?",
      "foto": "scrumfun.png",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Os pilares",
      "foto": "pilares.jpeg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Os papéis",
      "foto": "papeis.jpeg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Os eventos",
      "foto": "eventos.jpg",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Os artefatos",
      "foto": "artefatos.png",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "topico extra",
      "foto": "scrumfun.png",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar:
          AppBarCustomizada(titulo: 'Dynamics'),
      body: Column(
        children: [
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  margin:
                      EdgeInsets.only(left: 30, right: 20, top: 10, bottom: 10),
                  child: Divider(),
                ),
              ),
              Text('Aulas'),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(
                          left: 20, right: 30, top: 10, bottom: 10),
                      child: Divider()))
            ],
          ),
          Flexible(
            child: GridProdutos(
              atualiza: atualiza,
              moveis: Aula,
            ),
          )
        ],
      ),
    );
  }

  void atualiza() {
    setState(() {});
  }
  */
