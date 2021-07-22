import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/Screens/Pix/ListTransferMain.dart';
import 'package:flutter_application/Screens/Pix/historico.dart';
import 'package:flutter_application/widgets/rec_card_button.dart';
import 'package:flutter_application/widgets/square_card_button.dart';

import 'my_pix.dart';
import 'package:sizer/sizer.dart';

class PixScreen extends StatelessWidget {
  const PixScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pix'),
      ) ,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: 430.sp,
              height: 700.sp,
              decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.purple.shade100,Colors.indigo.shade100]),
            ),
              child: Container(
                      width: 300.sp,
                      height: double.infinity,
                      decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.purple.shade400,Colors.indigo.shade400],),
                      ),
                      child:  Image(image:NetworkImage('https://th.bing.com/th/id/R.32182b40e44b54fde1c0bd27a98ef35b?rik=MnBXNJU27xMT6Q&pid=ImgRaw'),fit: BoxFit.contain,height: 50.sp,width: 50.sp,)),
                  ),
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: SquareCard(page:ListTransfer(),title:'Transferir',icon: Icons.attach_money_outlined),
              ),
              Expanded(
                flex: 1,
                child: SquareCard(page:MyPix(),title:'Sua Chave', icon:Icons.vpn_key_rounded)
              ),

            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
             RecCard('Histórico de Transferências', Icons.history, HistoricoPage())
            ],
          ),
        ],
      ),
    );
  }

   _ShowTransList(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HistoricoPage()));
  }
}
