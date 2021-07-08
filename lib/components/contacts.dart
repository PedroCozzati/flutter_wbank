class Contact {
  final int id;
  final String name;
  final int conta;


  Contact(this.id,this.name,
      this.conta);


  @override
  String toString() {
    return 'Produtos{id: $id, nome: $name, conta: $conta}';
  }
}