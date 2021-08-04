import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const Url = 'https://instagram.com/maiconoliveirafotografia?utm_medium=copy_link';

// ignore: non_constant_identifier_names
void UrlInsta () async =>
    await canLaunch(Url) ? launch(Url) : throw 'oi $Url';


class Insta extends StatefulWidget {

  @override
  _InstaState createState() => _InstaState();
}

class _InstaState extends State<Insta> {
  @override
  Widget build(BuildContext context) {
    return  Row(    
                  children:<Widget>[
                GestureDetector(
                child: Image(image: AssetImage('images/insta.png'),),
                onTap: UrlInsta
                )
              ]
            );
  }
}