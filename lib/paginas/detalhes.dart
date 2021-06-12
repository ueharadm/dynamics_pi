import 'dart:math';

import 'package:flutter/material.dart';
import 'package:dynamics_pi/modelos/objeto.dart';
import 'package:dynamics_pi/widgets/appbar.dart';
import 'package:dynamics_pi/widgets/card_detalhes.dart';

class Detalhes extends StatefulWidget {
  final Objeto objeto;

  Detalhes({this.objeto});

  _DetalhesState createState() => _DetalhesState();
}

class _DetalhesState extends State<Detalhes> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarCustomizada(
        titulo: '',
      ),
      body: Align(
        alignment: Alignment.bottomCenter,
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(16),
              child: CardDetalhes(
                objeto: widget.objeto,
                atualizaPagina: atualiza,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void atualiza() {
    setState(() {});
  }
}
