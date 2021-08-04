import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const Url = 'https://instagram.com/daioliveira_designer?utm_medium=copy_link';

// ignore: non_constant_identifier_names
void UrlInstaDai () async =>
    await canLaunch(Url) ? launch(Url) : throw 'oi $Url';


class InstaDai extends StatefulWidget {

  @override
  _InstaDaiState createState() => _InstaDaiState();
}

class _InstaDaiState extends State<InstaDai> {
  @override
  Widget build(BuildContext context) {
    return  Row(    
                  children:<Widget>[
                GestureDetector(
                child: Image(image: AssetImage('images/insta.png'),),
                onTap: UrlInstaDai
                )
              ]
            );
  }
}