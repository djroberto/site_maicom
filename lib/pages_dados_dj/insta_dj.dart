import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const Url = 'https://instagram.com/dj_roberto_oficial?utm_medium=copy_link';

// ignore: non_constant_identifier_names
void UrlInstaDj () async =>
    await canLaunch(Url) ? launch(Url) : throw 'oi $Url';


// ignore: camel_case_types
class Insta_Dj extends StatefulWidget {

  @override
  _Insta_DjState createState() => _Insta_DjState();
}

// ignore: camel_case_types
class _Insta_DjState extends State<Insta_Dj> {
  @override
  Widget build(BuildContext context) {
    return  Row(    
                  children:<Widget>[
                GestureDetector(
                child: Image(image: AssetImage('images/insta.png'),),
                onTap: UrlInstaDj
                )
              ]
            );
  }
}