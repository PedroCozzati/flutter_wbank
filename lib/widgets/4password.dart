import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PassWord4 extends StatefulWidget {
  PassWord4(this.senha,this.page);
  String senha;
  Widget page;


  @override
  _PassWord4State createState() => _PassWord4State();
}

class _PassWord4State extends State<PassWord4> {
  final formKey = GlobalKey<FormState>();
  static TextEditingController controladorSenha1 = TextEditingController();
  static TextEditingController controladorSenha2 = TextEditingController();
  static TextEditingController controladorSenha3 = TextEditingController();
  static TextEditingController controladorSenha4 = TextEditingController();
  String senha = "${controladorSenha1.text}+${controladorSenha2.text}+${controladorSenha3.text}+${controladorSenha4.text}";
  String password = '1+1+1+1';

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Form(
        key: formKey,
        child: Column(
          children: [
            Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: 250.sp,
                      height: 300.sp,
                      decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.purple.shade100,Colors.indigo.shade100],),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(width: 40.sp,height: 40.sp,decoration: BoxDecoration(border:Border.all(color:Colors.black87),color: Colors.white60),
                            child: TextField(
                              controller: controladorSenha1,
                              maxLength: 1,
                              autofocus: true,
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.numberWithOptions(),
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 20.sp),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                counterText: '',
                              ),
                            ),
                          ),
                          Container(width: 40.sp,height: 40.sp,decoration: BoxDecoration(border:Border.all(color:Colors.black87),color: Colors.white60),
                            child: TextField(
                              maxLength: 1,
                              controller: controladorSenha2,
                              autofocus: true,
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.numberWithOptions(),
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 20.sp),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                counterText: '',
                              ),
                            ),
                          ),
                          Container(width: 40.sp,height: 40.sp,decoration: BoxDecoration(border:Border.all(color:Colors.black87),color: Colors.white60),
                            child: TextField(
                              maxLength: 1,
                              controller: controladorSenha3,
                              autofocus: true,
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.numberWithOptions(),
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 20.sp),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                counterText: '',
                              ),
                            ),
                          ),
                          Container(width: 40.sp,height: 40.sp,decoration: BoxDecoration(border:Border.all(color:Colors.black87),color: Colors.white60),
                            child: TextFormField(
                              maxLength: 1,
                              autofocus: true,
                              controller: controladorSenha4,
                              textInputAction: TextInputAction.send,
                              keyboardType: TextInputType.numberWithOptions(),
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 20.sp),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                counterText: '',
                              ),
                            ),
                          ),
                        ],
                      ),
                  ),
                ],
            ),
            Container(
              width: 250.sp,
              height:70.sp,
              color: Colors.deepPurple,
              child: InkWell(
                onTap: (){
                  formKey.currentState!.save();
                  formKey.currentState!.validate();
                  print(senha);
                  if (password == senha){
                    FocusScope.of(context).requestFocus(FocusNode());
                    Navigator.of(context)
                        .push(MaterialPageRoute(
                      builder: (BuildContext context) => widget.page,
                    ));
                    controladorSenha4.clear();
                    controladorSenha3.clear();
                    controladorSenha2.clear();
                    controladorSenha1.clear();
                  }
                  else{
                    formKey.currentState!.validate();
                    formKey.currentState!.save();
                    controladorSenha4.clear();
                    controladorSenha3.clear();
                    controladorSenha2.clear();
                    controladorSenha1.clear();
                    FocusScope.of(context).requestFocus(FocusNode());
                    Navigator.pop(context);
                  }
                },
                child: Card(
                  color: Colors.indigo,
                  child: Padding(
                    padding: EdgeInsets.only(top:20.sp),
                    child: Container(
                      width: 180.sp,
                      height:70.sp,
                      child:Column(
                        children: [
                          Text('Confirmar',style: TextStyle(fontSize: 18.sp,color: Colors.white),),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
