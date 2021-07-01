import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget():
        super(
        preferredSize: Size.fromHeight(300),
        child: Container(
          height: 290,
          decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.black,Colors.indigo])),
          child:Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:18.0,top: 25),
                child: Container(
                  height: 240,
                  padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                  width: 380,
                  decoration: BoxDecoration( borderRadius: BorderRadius.circular(20),gradient: LinearGradient(colors: [Colors.indigo,Colors.purple])),
                  child: Column(
                    children: [
                      Row(
                        children:[
                          Padding(
                            padding:EdgeInsets.only(left:100.0,top:40) ,
                              child: Container(
                                child:Center(
                                    child: Text('WebBank',style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),
                                    )
                                ),
                              ),
                            ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding:EdgeInsets.symmetric(horizontal: 165,vertical: 20) ,
                              child: Icon(Icons.monetization_on_outlined,color: Colors.white,size: 40,))
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding:EdgeInsets.only(left:15.0,top:15) ,
                              child: Container(
                                  child: Row(
                                    children:[
                                      Icon(Icons.person),
                                      Text(' Olá Pedro',style:TextStyle(color: Colors.white),
                                    )
                                ]),
                          ),
                          ),
                          Padding(
                              padding:EdgeInsets.only(left:90.0,top:15) ,
                              child: Container(child: Text('Seu Saldo:',style: TextStyle(color: Colors.white),))
                          ),
                          Padding(
                            padding:EdgeInsets.only(left:5.0,top:15) ,
                            child: Container(child: Text('RS:'+'0000000',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))
                          ),
                        ],
                      ),
                  ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  width: 20,
                    height: 20,
                    child: Icon(Icons.menu,color: Colors.white,)
                ),
              ),

            ],
          ),
        ),
      );
}
