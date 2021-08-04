
import 'package:flutter/material.dart';
import 'package:site_maicom/pages/Parceiros.dart';
import 'package:site_maicom/pages/Trabalhos.dart';
import 'package:site_maicom/pages/sobre.dart';
import 'package:site_maicom/pages/zap.dart';

class CustonListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        child: Column(
          children: <Widget>[
//------------------------------------PAGINA SOBRE-----------------------------------------------
   Row(              
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:<Widget>[
                TextButton(
                  onPressed: () => {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Sobre()))
                    },
                  child: Text('SOBRE',
                           style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                   ),                  
                    ),
               Icon(Icons.arrow_right),
              ]
            ),
  //------------------------------------PAGINA TRABALHOS----------------------------------------
   Row(              
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:<Widget>[
                TextButton(
                  onPressed: () => {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Trabalhos()))

                    },
                  child: Text('TRABALHOS',
                           style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                   ),                  
                    ),
               Icon(Icons.arrow_right),
              ]
            ),  
  //-----------------------------------ORÇAMENTOS---------------------------------------------
   Row(              
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:<Widget>[
                TextButton(
                  onPressed: UrlZap,
                  child: Text('ORÇAMENTOS',
                           style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                   ),                  
                    ),
               Icon(Icons.arrow_right),
              ]
            ),
  //--------------------------------------PARCEIROS----------------------------------------
   Row(              
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:<Widget>[
                TextButton(
                  onPressed: () => { 
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Parceiros()))

                   },
                  child: Text('PARCEIROS',
                           style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                   ),                  
                    ),
               Icon(Icons.arrow_right),
              ]
            ),

  //-----------------------------------------------------------------------
          ],
        ),
      ),
    );
  }
    
  }
  