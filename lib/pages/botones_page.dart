import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {

static final String botonesPageRoute='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(children: [
          _fondo(),
      ],
      ),
      );
    
  }

  Widget _fondo(){  

    final gradiente =Container();

  return Stack(children: [
      gradiente,
  ],
);
}
  Widget _bottonNavigation(){
  return Text('data');
  }
}