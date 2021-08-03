import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/Screens/CreditCard/credit_card.dart';
import 'package:flutter_application/Screens/Guardar/guardar_dinheiro.dart';
import 'package:flutter_application/Screens/Pix/pix_screen.dart';
import 'package:flutter_application/Screens/SenhaScreen/senha.dart';
import 'package:flutter_application/Screens/splash/splashScreen.dart';
import 'package:flutter_application/widgets/home_card.dart';
import 'package:flutter_application/widgets/home_item.dart';
import 'package:sizer/sizer.dart';

class ListHome extends StatefulWidget {
  const ListHome({Key? key}) : super(key: key);


  @override
  _ListHomeState createState() => _ListHomeState();
}
class _ListHomeState extends State<ListHome> {

  static const cor_cartao =  Colors.deepPurpleAccent;
  @override
    Widget build(BuildContext context) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Stack(
            children: [
                  Padding(
                    padding: EdgeInsets.only(bottom:0.sp),
                    child: Container(
                      decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.purple.shade100,Colors.indigo.shade100])),
                      width:500.w ,
                      height: 200.sp,
                    ),
                  ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left:0,top: 0),
                    child: Center(
                      child: Container(
                        width: 90.w,
                        height: 180.sp,
                        decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.indigo.shade400,Colors.purple.shade400]),borderRadius: BorderRadius.circular(20) ),
                          child: ListView(
                                  scrollDirection: Axis.horizontal ,
                                  children: [
                                    Row(
                                      children: [
                                        Container(width: 25.sp),
                                        Container(
                                          width: 230.sp,
                                          height: 180.sp,
                                          decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.indigo.shade400,Colors.purple.shade400]),borderRadius: BorderRadius.circular(20)),

                                          child:Row(
                                            children: [
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children:[
                                             // Navigator.push(context, MaterialPageRoute(builder: (context){
                                             //  return GuardarDinheiro();
                                               HomeItem('Dinheiro Guardado', Icons.money, 'BRL 120.00', '', Icons.navigate_next_rounded, GuardarDinheiro(),'',''),
                                               HomeItem('Cartão de crédito', Icons.credit_card,'BRL 200.00', 'Fatura Atual',Icons.navigate_next_rounded,Senha(CreditCard()),'Limite Disponivel: ','20.00')
                                          ],
                                            ),
                                          ],
                                          )
                                        ),
                                        Container(width:0.sp,),
                                        Container(
                                          width: 250.sp,
                                          height: 180.sp,
                                          decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.indigo.shade400,Colors.purple.shade400]),borderRadius: BorderRadius.circular(20)),
                                          child: Row(children: [
                                            Padding(
                                              padding: const EdgeInsets.only(left:5),
                                              child: Container(width: 10.sp,),
                                            ),
                                            Center(
                                              child: Text(
                                                '     Investimentos',
                                                style:TextStyle(fontSize: 30.sp) ,
                                              ),
                                            ),

                                          ],
                                          )
                                        ),
                                        Container(width: 5.sp,),
                                      ],
                                    )
                                  ],
                                )
                            ),
                    ),
                        ),
                ],
              ),
            ],
          ),
          SizedBox(
            child: Container(
              width: 270.sp,
              height: 70.sp,
              child: ListView(
                scrollDirection: Axis.horizontal ,
                children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        HomeCard('Pix', PixScreen(),Icons.api),
                        Container(width: 10,),
                        HomeCard('Pagar', Senha(CreditCard()),Icons.view_sidebar_rounded),
                        Container(width: 10,),
                        HomeCard('Transferir', Senha(PixScreen()),Icons.send_outlined),
                        Container(width: 10,),
                        HomeCard('Depositar', Senha(PixScreen()),Icons.account_balance_wallet),
                        Container(width: 10,),
                        HomeCard('Empréstimo', Senha(PixScreen()),Icons.account_balance),
                      ],
                    ),

                ],
              ),
            ),
          ),
        ],
      );
    }
  }
