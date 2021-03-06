import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:modelo_ventanas/pages/botones_page.dart';
import 'package:modelo_ventanas/pages/home_page.dart';
import 'package:modelo_ventanas/pages/page_dos.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent
));
    return MaterialApp(
    debugShowCheckedModeBanner: false,
     initialRoute: BotonesPage.botonesPageRoute,
     routes:getRoutes(),
    );
  }
}

Map<String,WidgetBuilder> getRoutes(){
  return <String,WidgetBuilder>{
    HomePage.homePageRoute : (BuildContext constext)=> HomePage(),
    PaginaDos.paginaDosRoute : (BuildContext constext)=> PaginaDos(),
    BotonesPage.botonesPageRoute : (BuildContext constext)=> BotonesPage(),
 };
}