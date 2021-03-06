import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  static final String botonesPageRoute = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _fondo(),
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Column(
              children: [
                _titulo(),
                SizedBox(
                  height: 40,
                ),
                _botones(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: _bottonNavigation(context),
    );
  }

  Widget _titulo() {
    TextStyle estiloTitulo = TextStyle(
        color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold);
    TextStyle estiloSubtitulo = TextStyle(color: Colors.white, fontSize: 18);

    return SafeArea(
      child: SizedBox(
        width: 270.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Clasificacion de Transaccion',
              style: estiloTitulo,
            ),
            SizedBox(height: 20),
            Text(
              'Clasifica la transaccion en una categoria particular',
              style: estiloSubtitulo,
            )
          ],
        ),
      ),
    );
  }

  Widget _fondo() {
    final gradiente = Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(52, 54, 101, 1.0),
              Color.fromRGBO(35, 37, 57, 1.0)
            ],
            begin: FractionalOffset(0.0, 0.6),
            end: FractionalOffset(0.0, 1.0),
          ),
        ));
    final cajaRosada = Transform.rotate(
      angle: -pi / 5,
      child: Container(
          height: 360.0,
          width: 360.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0),
            ]),
            borderRadius: BorderRadius.circular(100),
          )),
    );
    return Stack(
      children: [
        gradiente,
        Positioned(
          child: cajaRosada,
          top: -70,
        )
      ],
    );
  }

  Widget _botones() {
    return Table(
      children: [
        TableRow(
          children: [
            _crearBotonesRedondeados(Colors.blueAccent,Icons.border_all,'General'),
             _crearBotonesRedondeados(Colors.purpleAccent,Icons.border_all,'Bus')
          ]
        ),
        TableRow(
          children: [
            _crearBotonesRedondeados(Colors.pinkAccent,Icons.shop,'Buy'),
            _crearBotonesRedondeados(Colors.blueAccent,Icons.insert_drive_file,'File')
          ]
        ),
        TableRow(
          children: [
            _crearBotonesRedondeados(Colors.blueAccent,Icons.movie_filter,'Enterteiment'),
            _crearBotonesRedondeados(Colors.greenAccent,Icons.cloud,'Glosary')
          ]
        )
      ],
    );
  }

  Widget _crearBotonesRedondeados(Color color,IconData icon,String texto){
      return ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0),
          child: Container( 
            height: 180.0,
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color:Color.fromRGBO(62, 66, 107,0.7),
              borderRadius: BorderRadius.circular(20),
              ),
              child: Column(    
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: 10.0,),
                  CircleAvatar(
                    minRadius: 30.0,
                    backgroundColor: color,
                    child: Icon(icon,size: 50.0,color: Colors.white,),
                  ),
                  Text(texto,
                  style: TextStyle( 
                    color: color,
                    fontSize: 15
                 ),
                 ),
                   SizedBox(height: 10.0,),
                ],
              ),
            ),
        ),
      );
  }

  Widget _bottonNavigation(BuildContext context) {
    //Cambia el color del bottonNavigationBar
    return Theme(
      data: Theme.of(context).copyWith(
          canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
          primaryColor: Colors.pink,
          textTheme: Theme.of(context).textTheme.copyWith(
              caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)))),
      child: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: ''),
        BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart_outline_outlined), label: ''),
        BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle), label: '')
      ]),
    );
  }
}
