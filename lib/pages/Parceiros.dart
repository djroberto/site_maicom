import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:site_maicom/pages/Face.dart';
import 'package:site_maicom/pages_dados_designer/Zap_Dai.dart';
import 'package:site_maicom/pages_dados_designer/instaDai.dart';
import 'package:site_maicom/pages_dados_dj/face_dj.dart';
import 'package:site_maicom/pages_dados_dj/insta_dj.dart';
import 'package:site_maicom/pages_dados_dj/zap_dj.dart';

class Parceiros extends StatefulWidget {

  @override
  _ParceirosState createState() => _ParceirosState();
}

class _ParceirosState extends State<Parceiros> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(50, 50, 50, 50),
      color: Colors.black,
      height:  MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
         child:
//---------------------------logo parceiro dj roberto----------------------------------
             Column(
               children: [
                 Padding(
                   padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
                   child: Row( 
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      
                      Container(
                          width: 267,
                          height: 150,
                          decoration: BoxDecoration(
                                             image: DecorationImage(
                                                            image: AssetImage('images/djrob2.jpg'),
                                                            alignment: Alignment.centerLeft),                                                             ),
                     ),
                     
//------------------------link face------------------------------------------
                      GestureDetector(
                        child: Image(image: AssetImage('images/face.png'),),
                        onTap: UrlFaceDj
                      ),
//------------------------link insta----------------------------------------
                      GestureDetector(
                        child: Image(image: AssetImage('images/insta.png'),),
                        onTap: UrlInstaDj
                      ),
//----------------------------link zap-----------------------------------------
                       GestureDetector(
                        child: Image(image: AssetImage('images/zap.png'),),
                        onTap: UrlZapDj
                      ),
                    ],
            ),
                 ),
//-------------------------parceiros designer-----------------------------------------
 Padding(
                   padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
                   child: Row( 
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          width: 267,
                          height: 150,
                          decoration: BoxDecoration(
                                             image: DecorationImage(
                                                            image: AssetImage('images/logodai.jpg'),
                                                            alignment: Alignment.centerLeft)                                                               ),
                     ),
                     
//------------------------link face------------------------------------------
                      GestureDetector(
                        child: Image(image: AssetImage('images/face.png'),),
                        onTap: UrlFace
                      ),
//------------------------link insta----------------------------------------
                      GestureDetector(
                        child: Image(image: AssetImage('images/insta.png'),),
                        onTap: UrlInstaDai
                      ),
//----------------------------link zap-----------------------------------------
                       GestureDetector(
                        child: Image(image: AssetImage('images/zap.png'),),
                        onTap: UrlZapDai
                      ),
                    ],
            ),
                 ),
               ],
             ),
             
           
         
    ); 
  }
}