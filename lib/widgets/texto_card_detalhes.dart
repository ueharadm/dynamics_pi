import 'package:flutter/material.dart';

class TextoCardDetalhes extends StatelessWidget {
  final String texto;
  final TextStyle estilo;
  final String imagem;

  TextoCardDetalhes({this.texto, this.estilo, this.imagem});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8, left: 16, right: 16),
      child: _estilizarTexto(texto, imagem),
    );

    //_estilizarTexto(texto));
  }

  _estilizarTexto(texto, imagem) {
    if (estilo == null) {
      return Column(
        children: [
          SizedBox(
            child: Container(
              margin: EdgeInsets.all(10),
              child: ClipRRect(
                //borderRadius: BorderRadius.circular(10),
                child: Image.asset('utilidades/assets/imagens/$imagem'),
              ),
            ),
            width: 700,
            height: 200,
          ),
          Text(texto, style: estilo),
        ],
      );
    }
    return Text(texto);
  }
}
