import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Trabalhos extends StatefulWidget {

  @override
  _TrabalhosState createState() => _TrabalhosState();
}

class _TrabalhosState extends State<Trabalhos> {
  @override
  Widget build(BuildContext context) {
//-----------------------------barra menu----------------------------------------------
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
//--------------------------------------------------------------------------------------
    var size = MediaQuery.of(context).size;
    // ignore: non_constant_identifier_names
    final MaxiLines =5;
    return Scaffold(
      appBar: appBar,
//----------------------------corpo pagina apresentaçaõ dos trabalhos------------------------------------------
      body: (
      Container(
        width: size.width,
        height: size.height,
        color: Colors.black,
        child: Column(
          children: [ Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
          children: [ Padding(
                     padding: const EdgeInsets.only(top: 20, left: 20),
                     child:  Image.asset('images/person1.jpg', width: 250, height: 250,)
                             ),
                              Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(20),
                                    child: Text('Ola caro cliente!',
                                   // overflow: TextOverflow.fade,
                                    textAlign: TextAlign.start, 
                                    style: (TextStyle(fontSize: 30,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.white)
                                                                                 ),
                                                                maxLines: MaxiLines,
                                                                                  ),
                                  ),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Text("Nesta aba do site gostaria de demonstrar alguns dos trabalhos qe tive a hora de poder registrar pelas lentes da minha camera, são diversos tipos de ensaios." " \n\n Espero qe gostem e fiquem a vontade para me chamar para qualquer tipo de duvida ",
                              textAlign: TextAlign.start,
                              style: (TextStyle(fontSize: 15,
                                                                            fontWeight: FontWeight.bold,
                                                                            color: Colors.white)
                                                                           ),
                                                          maxLines: MaxiLines,),
                            )  
                       ],
                              ),
                    ]    
                     ),
          
          ],
        )
          
      )
      )
      );
      
      
            
     
    
  }
}