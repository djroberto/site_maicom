import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const Url = 'http://api.whatsapp.com/send?1=pt_BR&phone=554896353090';

// ignore: non_constant_identifier_names
void UrlZapDai () async =>
    await canLaunch(Url) ? launch(Url) : throw 'oi $Url';


// ignore: camel_case_types
class Zap_Dai extends StatefulWidget {

  @override
  _Zap_DaiState createState() => _Zap_DaiState();
}

// ignore: camel_case_types
class _Zap_DaiState extends State<Zap_Dai> {
  @override
  Widget build(BuildContext context) {
    return  Row(    
                  children:<Widget>[
                GestureDetector(
                child: Image(image: AssetImage('images/zap.png'),),
                onTap: UrlZapDai
                )
              ]
            );
  }
}