import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const Url = 'http://api.whatsapp.com/send?1=pt_BR&phone=554899108009';

// ignore: non_constant_identifier_names
void UrlZap () async =>
    await canLaunch(Url) ? launch(Url) : throw 'oi $Url';


class Zap extends StatefulWidget {

  @override
  _ZapState createState() => _ZapState();
}

class _ZapState extends State<Zap> {
  @override
  Widget build(BuildContext context) {
    return  Row(    
                  children:<Widget>[
                GestureDetector(
                child: Image(image: AssetImage('images/zap.png'),),
                onTap: UrlZap
                )
              ]
            );
  }
}