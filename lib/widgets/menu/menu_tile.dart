import 'package:flutter/material.dart';

class MenuTile extends StatelessWidget {
  final String nome;
  final IconData icon;
  MenuTile(this.icon,this.nome);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(children: [
        Icon(icon,size: 20,color: Colors.blueGrey,),
        Text(nome, style:TextStyle(fontSize: 18,color: Colors.grey.shade700)),
      ],
      ),
    );
  }
}
