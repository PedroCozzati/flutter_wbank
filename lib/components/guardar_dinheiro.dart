class Guardar {
  final int id;
  final int dinheiro;
  final int numeroConta;


  Guardar(this.id,this.dinheiro,
      this.numeroConta);


  @override
  String toString() {
    return 'Guardar{id: $id, nome: $dinheiro, conta: $numeroConta}';
  }
}