class Produtos {
  final String nome;
  final String sala;
  final String situacao;

  Produtos(this.nome,
      this.sala,
      this.situacao,);


  @override
  String toString() {
    return 'Produtos{nome: $nome, sala: $sala, situacao: $situacao}';
  }
}