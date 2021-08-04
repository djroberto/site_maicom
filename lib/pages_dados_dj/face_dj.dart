import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const Url = 'https://www.facebook.com/joserobertoinaciopereira';

// ignore: non_constant_identifier_names
void UrlFaceDj () async =>
    await canLaunch(Url) ? launch(Url) : throw 'oi $Url';


// ignore: camel_case_types
class Face_dj extends StatefulWidget {

  @override
  _Face_djState createState() => _Face_djState();
}

// ignore: camel_case_types
class _Face_djState extends State<Face_dj> {
  @override
  Widget build(BuildContext context) {
    return  Row(    
                  children:<Widget>[
                GestureDetector(
                child: Image(image: AssetImage('images/face.png'),),
                onTap: UrlFaceDj
                )
              ]
            );
  }
}