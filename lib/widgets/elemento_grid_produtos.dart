import 'package:flutter/material.dart';
import 'package:dynamics_pi/modelos/objeto.dart';
import 'package:dynamics_pi/paginas/detalhes.dart';
import 'package:dynamics_pi/widgets/degrade_elemento_grid_produtos.dart';
import 'package:dynamics_pi/widgets/imagem_elemento_grid_produtos.dart';
import 'package:dynamics_pi/widgets/titulo_elemento_grid_produtos.dart';

class ElementoGridProdutos extends StatefulWidget {
  final Objeto movel;
  final Function atualiza;

  ElementoGridProdutos({this.movel, this.atualiza});

  @override
  _ElementoGridProdutosState createState() => _ElementoGridProdutosState();
}

class _ElementoGridProdutosState extends State<ElementoGridProdutos> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Detalhes(objeto: widget.movel),
          ),
        ).then(
          (value) => widget.atualiza(),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              spreadRadius: 2,
              blurRadius: 8,
              color: Colors.black12,
            )
          ],
        ),
        margin: EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              ImagemElementoGridProdutos(imagem: widget.movel.foto),
              DegradeElementoGridProdutos(),
              TituloElementoGridProdutos(titulo: widget.movel.titulo)
            ],
          ),
        ),
      ),
    );
  }
}
