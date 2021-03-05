import 'package:flutter/material.dart';
import 'package:modelo_ventanas/pages/page_dos.dart';


class HomePage extends StatelessWidget {

    static final String homePageRoute='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
           crossAxisAlignment: CrossAxisAlignment.center,
          children:[
           _crearAppBar(),
           _tituloImagen(),
           SizedBox(height: 20,),
           _crearBotonesAccion(context),
           SizedBox(height: 20,),
           _descripcionImagen(),
        ],
      )
    );
  }

Widget _crearAppBar(){
  return FadeInImage(
         placeholder: AssetImage('assets/loading.gif'), 
         image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/d/d9/Sailing_Boat_Horizon.JPG'),
         fadeInDuration: Duration(milliseconds: 200),
         fit: BoxFit.contain,
      );
}

Widget _tituloImagen(){
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
             Text('Sailing Boat Horizon',style:TextStyle( fontSize:20.0,fontWeight: FontWeight.bold ) ,),
             SizedBox( 
                height: 50,
                width: 310,
                child: Text('The Solway Lass on the horizon in the Whitsunday Isles',style:TextStyle( fontSize:15.0,color: Colors.black54),maxLines: 2,)),
          ],
        ),
      ),
      Row(
        children: [
          Icon(Icons.star,color: Colors.redAccent,),
          Text('41')
        ],
      ),
       SizedBox(width: 20,)
    ],
  );
  
}

Widget _crearBotonesAccion(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       
        children: [
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, PaginaDos.paginaDosRoute);
            },
            child: _crearItem(Icons.phone, 'Phone'),
          ),
           _crearItem(Icons.near_me, 'Route'),
           _crearItem(Icons.share, 'Share')
        ],
      ),
    );
  }

Widget _crearItem(IconData icon,String titulo){
  return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon,color: Colors.blueAccent,size: 40.0,),
              Text(titulo,style: TextStyle(color: Colors.blueAccent,fontSize: 15,fontWeight: FontWeight.bold),)
            ],
          );
}
 Widget _descripcionImagen() {
return SizedBox(width: 350,
  child: Text('This file contains additional information such as Exif metadata which may have been added by the digital camera, scanner, or software program used to create or digitize it. If the file has been modified from its original state, some details such as the timestamp may not fully reflect those of the original file. The timestamp is only as accurate as the clock in the camera, and it may be completely wrong.',
    style: TextStyle(
    fontSize: 15,
    fontStyle: FontStyle.italic,
    ),
  ),
);
  }
}