import 'package:flutter/material.dart';

class Card extends StatefulWidget {
  const Card({Key? key}) : super(key: key);

  @override
  _CardState createState() => _CardState();
}
class _CardState extends State<Card> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 400,
        height: 300,
        decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.purple.shade400,Colors.indigo.shade400],),
        ),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),gradient: LinearGradient(colors: [Colors.indigoAccent.shade400,Colors.indigo.shade600],),
              ),
              height: 190,
              width: 350,
              child: Container(
                width: 350,
                height: 190,
                child:
                Padding(
                  padding: const EdgeInsets.only(top:20.0,left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        Icon(Icons.calculate_sharp,color: Colors.white,),
                        Container(width: 240,),
                        Icon(Icons.circle,color: Colors.red,),
                        Container(width: 0,),
                        Icon(Icons.circle,color: Colors.yellow.shade600,),
                      ],),
                      Container(height:70),
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(text:' PEDRO H C CAMILLO\n\n',style: TextStyle(fontSize: 18,color: Colors.white)),
                            TextSpan(text:' 3393 4342 4324 3423',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold)),

                          ])),
                    ],
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }
}
