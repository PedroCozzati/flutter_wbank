import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/menu/menu_tile.dart';
import 'package:sizer/sizer.dart';

class MenuWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        physics:NeverScrollableScrollPhysics(),
        padding:EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.indigo.shade400,Colors.purple.shade400])
            ),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Menu',style: TextStyle(color: Colors.white,fontSize: 23),),
                    Text('Pedro Henrique Cozzati Camillo',style: TextStyle(color: Colors.white,fontSize: 16),)
                  ],
                )
          ),
          Container(
            height: 550.sp,
            decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.indigo.shade100,Colors.purple.shade50]),
          ),
              child:  Column(children: [
                MenuTile(Icons.account_circle_rounded,'  perfil'),
                MenuTile(Icons.add,'  saldo e extrato'),
                MenuTile(Icons.money,'  conta'),
                MenuTile(Icons.settings_cell_sharp,'  recargas'),
                MenuTile(Icons.help,'  ajuda'),
                MenuTile(Icons.build,'  configurações'),
                Container(color: Colors.white,width: 310,height: 10,),
                Container( width: 310,height: 160,decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Colors.indigo.shade400,Colors.purple.shade400])
                ),
                child: Center(child: Text('v0.89',style: TextStyle(color: Colors.white,fontSize: 23),)),)
              ],)
          ),
        ],
      ),
    );
  }
}
