import 'package:flutter/material.dart';
import 'package:site_maicom/pages/Face.dart';

class teste extends StatefulWidget {
  const teste({ key }) : super(key: key);

  @override
  _testeState createState() => _testeState();
}

class _testeState extends State<teste> {
  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
       iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          flexibleSpace: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 10),
                child: Text('TRABALHOS', style: TextStyle(fontWeight: FontWeight.bold,
                                                   color: Colors.black,
                                                   fontSize: 25),
                                                   ),
              ),
            ]
            )
            );
    return Scaffold(
      appBar: appBar,
      body: Container(
        color: Colors.black,
        child: GridView.count(crossAxisCount: 1,
        childAspectRatio: 2,
                            children: [
 
                              Padding(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: GridView.count(crossAxisCount: 2,
                                              mainAxisSpacing: 0,
                                              crossAxisSpacing: 0,
                                               children: [
                                                          Container(
                                                                    width: 300,
                                                                    height: 300,
                                                                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/person1.jpg')) ),
                                                                    child:null
                                                          ),
                                                                    //   Image.asset('images/person1.jpg', width: 250, height: 250)),
                                                        SingleChildScrollView(child:
                                                          Column(
                                                            children: [
                                                              Text("OLA CARO CLIENTES",
                                                                  textAlign: TextAlign.start,
                                                                  style: (TextStyle(fontSize: 50,
                                                                                    fontWeight: FontWeight.bold,
                                                                                    color: Colors.white)
                                                                                                            ),),
                                                           
                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 20,bottom: 20),
                                                            child: Text("Nesta aba do site gostaria de demonstrar alguns dos trabalhos qe tive a hora de poder registrar pelas lentes da minha camera, são diversos tipos de ensaios. Espero qe gostem e fiquem a vontade para me chamar para qualquer tipo de duvida ",
                                                                textAlign: TextAlign.start,
                                                                style: (TextStyle(fontSize: 25,
                                                                                  fontWeight: FontWeight.bold,
                                                                                  color: Colors.white)
                                                                                                          ),
                                                                                                          ),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 20,),
                                                            child: Text("Aqui tambem você ira encontrar os links para aaquisição das fotos",
                                                                textAlign: TextAlign.start,
                                                                style: (TextStyle(fontSize: 25,
                                                                                  fontWeight: FontWeight.bold,
                                                                                  color: Colors.white)
                                                                                                          ),),
                                                          ),
                                                                                                         ],
                                                          ),
                                                        )
                                 
                                               ],),
                              ),
                              GridView.count(crossAxisCount: 4,
                                             crossAxisSpacing: 0,
                                             mainAxisSpacing: 0,
                                             children: [
                                               Card( 
                                                    child: Scaffold(
                                                    body: Container(color: Colors.black,
                                                                    child:  Image.asset('images/person1.jpg', width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height/* width: 250, height: 250,*/)),
                                                    bottomNavigationBar: TextButton(onPressed: () { 
                                                       UrlFace();
                                                     },
                                                    child: Text("aperte",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),) ,
                                                    ) ,
                                                    ),
                                               Card(
                                                    child: Scaffold(
                                                    body: Container(color: Colors.black,
                                                                    child:  Image.asset('images/person1.jpg', width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height/* width: 250, height: 250,*/)),
                                                    bottomNavigationBar: TextButton(onPressed: () {  },
                                                    child: Text("aperte",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),) ,
                                                    ) ,
                                                    ),
                                               Card(
                                                    child: Scaffold(
                                                    body: Container(color: Colors.black,
                                                                    child:  Image.asset('images/person1.jpg', width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height/* width: 250, height: 250,*/)),
                                                    bottomNavigationBar: TextButton(onPressed: () {  },
                                                    child: Text("aperte",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),) ,
                                                    ) ,
                                               ),
                                               Card(
                                                    child: Scaffold(
                                                    body: Container(color: Colors.black,
                                                                    child:  Image.asset('images/person1.jpg', width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height/* width: 250, height: 250,*/)),
                                                    bottomNavigationBar: TextButton(onPressed: () {  },
                                                    child: Text("aperte",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),) ,
                                                    ) ,
                                               ),
                                             ],)
                                
                                           
                            ]
    ),
      )
    );
  }
}