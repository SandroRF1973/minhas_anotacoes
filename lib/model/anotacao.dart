import 'package:minhas_anotacoes/helper/anotacaohelper.dart';

class Anotacao {
  int? id;
  String? titulo;
  String? descricao;
  String? data;

  Anotacao(this.id, this.titulo, this.descricao, this.data);

  Anotacao.fromMap(Map map) {
    id = map[AnotacaoHelper.colunaId];
    titulo = map["titulo"];
    descricao = map["descricao"];
    data = map["data"];
  }

  Map toMap() {
    Map<String, dynamic> map = {
      "titulo": titulo,
      "descricao": descricao,
      "data": data,
    };

    // ignore: unnecessary_null_comparison
    if (id != null) {
      map["id"] = id;
    }

    return map;
  }
}
