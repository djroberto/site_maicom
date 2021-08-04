import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const Url = 'https://www.facebook.com/maicon.oliveira.3572';

// ignore: non_constant_identifier_names
void UrlFace () async =>
    await canLaunch(Url) ? launch(Url) : throw 'oi $Url';


class Face extends StatefulWidget {

  @override
  _FaceState createState() => _FaceState();
}

class _FaceState extends State<Face> {
  @override
  Widget build(BuildContext context) {
    return  Row(    
                  children:<Widget>[
                GestureDetector(
                child: Image(image: AssetImage('images/face.png'),),
                onTap: UrlFace
                )
              ]
            );
  }
}