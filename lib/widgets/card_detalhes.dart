import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:dynamics_pi/main.dart';
import 'package:dynamics_pi/modelos/objeto.dart';
import 'package:dynamics_pi/widgets/texto_card_detalhes.dart';

class CardDetalhes extends StatelessWidget {
  final formatacaoReais = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');

  final Objeto objeto;
  final Function atualizaPagina;

  CardDetalhes({this.objeto, this.atualizaPagina});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextoCardDetalhes(
              texto: objeto.titulo,
              estilo: Theme.of(context).textTheme.headline1),

          TextoCardDetalhes(texto: objeto.descricao,imagem: objeto.imagemInterna),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
              ],
            ),
          )
        ],
      ),
    );
  }

}
