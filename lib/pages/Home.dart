import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:site_maicom/class/CustonListTile.dart';
import 'package:site_maicom/pages/insta.dart';
import 'package:site_maicom/pages/Face.dart';
import 'package:site_maicom/pages/zap.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(        
        child: ListView(
          children: <Widget>[
            DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: <Color>[
                Colors.black,
                Colors.white
              ]
          ),
            ),
             child: Container(
               child: Column(
                 children: <Widget>[
                     Material(
                       borderRadius: BorderRadius.all(Radius.circular(50.0)),
                       child: Padding(padding: EdgeInsets.all(8.0),
                       child: Image.asset('images/putao.jpg',width: 80, height: 80,),)
                     )
                 ],
                 ),
             )
            ),
            CustonListTile(),
            
            ],
            ),
            ),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          flexibleSpace: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
//------------------------link face------------------------------------------
              GestureDetector(
                child: Image(image: AssetImage('images/face.png'),),
                onTap: UrlFace
              ),
//------------------------link insta----------------------------------------
              GestureDetector(
                child: Image(image: AssetImage('images/insta.png'),),
                onTap: UrlInsta
              ),
//----------------------------link zap-----------------------------------------
               GestureDetector(
                child: Image(image: AssetImage('images/zap.png'),),
                onTap: UrlZap
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
            child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.black),
                child: Column(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width,
                          height: 250,
                          child: Image(image: AssetImage('images/logo2.png'))),
//-----------------------------carrocel de fotos---------------------------------------
                      Container(
                          width: MediaQuery.of(context).size.width,
                          height: 250,
                          decoration: BoxDecoration(color: Colors.black),
                          child: CarouselSlider(
                            options: CarouselOptions(
                              height: 400.0,
                              autoPlay: true,
                              autoPlayAnimationDuration:
                                  Duration(milliseconds: 800),
                              autoPlayInterval: Duration(seconds: 4),
                              disableCenter: false,
                              viewportFraction: 0.3,
                              enlargeCenterPage: true,
                            ),
                            items: [
                              'images/slides/1.jpeg',
                              'images/slides/2.jpeg',
                              'images/slides/3.jpeg',
                              'images/slides/5.jpeg',
                              'images/slides/6.jpeg',
                              'images/slides/7.jpeg',
                              'images/slides/8.jpeg',
                              'images/slides/9.jpeg',
                              'images/slides/10.jpeg',
                              'images/slides/11.jpeg',
                            ].map((i) {
                              return Builder(
                                builder: (BuildContext context) {
                                  return Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 5.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: DecorationImage(
                                          image: AssetImage('$i'),
                                          fit: BoxFit.fitHeight,
                                        ),
                                       color: Colors.grey[800]
                                      ),
                                      child: null 
                                      );
                                },
                              );
                            }).toList(),
                          )),
                      //-------------------------------------------------------------------------------
                      Container(
                          width: MediaQuery.of(context).size.width,
                          height: 250,
                          child: Image(image: AssetImage('images/log3.png'))),

                      //---------------------------------------------------------------------------------------------
                      
                    ]
                    )
            )
        )
    );
  }

  clipRRect({BorderRadius borderRadius, Stack child}) {}
}
