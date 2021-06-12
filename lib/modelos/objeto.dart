class Objeto {
  String titulo;
  String foto;
  String descricao;
  String imagemInterna;

  Objeto({this.titulo, this.foto, this.descricao, this.imagemInterna});

  Objeto.fromJson(Map<String, dynamic> json) {
    titulo = json['titulo'];
    foto = json['foto'];
    descricao = json['descricao'];
    imagemInterna = json['imagemInterna'];
  }
}
