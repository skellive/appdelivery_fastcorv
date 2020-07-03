
import 'package:flutter/material.dart';
import 'package:fastcorv_delivery/vista/login/LoginPage.dart';
import 'package:fastcorv_delivery/vista/login/registerMap.dart';
import 'package:fastcorv_delivery/vista/login/resgisterLogin.dart';



void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/' : (context) => LoginPage(),
      '/second' : (context) => RegisterLogin(),
      '/map' : (context) => RegisterMap(),
    },
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
        
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
    );
  }
}
