import 'package:flutter/material.dart';

class Sobre extends StatefulWidget {

  @override
  _SobreState createState() => _SobreState();
}

class _SobreState extends State<Sobre> {
  @override
  Widget build(BuildContext context) {
    return Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height ,
                decoration: BoxDecoration(color: Colors.black,
                                           image: DecorationImage(image: AssetImage('images/sobre.jpg')),
   )       
    );
  }
}