import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const Url = 'http://api.whatsapp.com/send?1=pt_BR&phone=554899409134';

// ignore: non_constant_identifier_names
void UrlZapDj () async =>
    await canLaunch(Url) ? launch(Url) : throw 'oi $Url';


// ignore: camel_case_types
class Zap_Dj extends StatefulWidget {

  @override
  _Zap_DjState createState() => _Zap_DjState();
}

// ignore: camel_case_types
class _Zap_DjState extends State<Zap_Dj> {
  @override
  Widget build(BuildContext context) {
    return  Row(    
                  children:<Widget>[
                GestureDetector(
                child: Image(image: AssetImage('images/zap.png'),),
                onTap: UrlZapDj
                )
              ]
            );
  }
}