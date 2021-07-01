import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageInfo extends StatelessWidget {
  const PageInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
                 child:ListTile(
                    leading:Icon(Icons.star),
                      title:
                        Text('Escola 1 App'),
                      subtitle: Text("2021\nPedro", style: TextStyle(fontSize: 12),
                        )
                 )

            );


  }
}
