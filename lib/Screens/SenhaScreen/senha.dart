import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/Screens/CreditCard/credit_card.dart';
import 'package:flutter_application/widgets/4password.dart';
import 'package:flutter_application/widgets/ConfirmButton.dart';
import 'package:sizer/sizer.dart';

class Senha extends StatelessWidget {
  Senha(this.page);
  Widget page;

  final _formKey = GlobalKey<FormState>();
  static TextEditingController controladorSenha1 = TextEditingController();
  static TextEditingController controladorSenha2 = TextEditingController();
  static TextEditingController controladorSenha3 = TextEditingController();
  static TextEditingController controladorSenha4 = TextEditingController();
  String senha = "${controladorSenha1.text}+${controladorSenha2.text}+${controladorSenha3.text}+${controladorSenha4.text}";
  String password = '1+1+1+1';

  @override
  Widget build(BuildContext context) {
    print(senha);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
          width: 430.sp,
          height: 500.sp,
          padding: EdgeInsets.only(top: 15.sp),
          decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.purple.shade100,Colors.indigo.shade100]),
          ),
          child: Column (
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  color: Colors.white60,
                  height: 80.sp,
                  width: 250.sp,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    IconButton(icon: Icon(Icons.arrow_back_outlined,size:20.sp), onPressed:(){ FocusScope.of(context).requestFocus(FocusNode());Navigator.pop(context);}),
                    Text('    Digite sua senha para continuar',style: TextStyle(color: Colors.deepPurple.shade900,fontWeight: FontWeight.bold,fontSize: 14.sp),)
                  ],),
                ),
          Container(
            child:PassWord4(senha,page),
          ),


    ],)));
  }
}

