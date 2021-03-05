import 'package:flutter/material.dart';

class PaginaDos extends StatelessWidget {

static final String paginaDosRoute='paginaDosRoute';
final pageController=new PageController();
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      scrollDirection:Axis.vertical ,
      children: [
       _paginaPrincipal(),
       _paginaSecundaria()
      ],
    );
  }

  _paginaPrincipal(){
    return Scaffold(
      body: Stack(
      children:[
       _colorFondo(),
        GestureDetector(
          onTap: (){
              pageController.nextPage(duration: Duration(seconds: 1),curve: Curves.decelerate);
          },
          child: Image(image: AssetImage('assets/scroll.png'),
          fit: BoxFit.cover,),
        ),
        _contenido()
   ]  
      ),
    );
  }

  Widget _contenido(){

    TextStyle stilo= new TextStyle(color: Colors.white,fontSize: 60);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SafeArea(
          child: Column(
            children: [
              SizedBox(height: 50,),
                Text('11°',style: stilo,),
                SizedBox(height: 50,),
                Text('Miercoles',style: stilo),
                Expanded(child: SizedBox()),
                Icon(Icons.keyboard_arrow_down,color: Colors.white,size: 150,)
            ],
          ),
        ),
      ],
    );
  }

  Widget _colorFondo(){
    return Container(
     height: double.infinity,
     width: double.infinity,
     color: Color.fromRGBO(108,192,208,1.0),
    );
  }
  _paginaSecundaria(){
  return Scaffold(
    body:Stack(
       children :[
        _colorFondo(),
         Center(
           child:TextButton(
             onPressed: (){},
             style: TextButton.styleFrom(
               backgroundColor: Colors.blueAccent,
               elevation:4.0,
               shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                minimumSize: Size(200,50)
               ),
             child: Text('Bienvenido', style:TextStyle(color: Colors.white),)
          ),
          )
      ],
   )
    
  );
  }

}