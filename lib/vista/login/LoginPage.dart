import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget{
  Widget insertEmail(){
    return  Container(
      padding: EdgeInsets.only(top:20.0),
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              labelText: 'Usuario o Correo',
              labelStyle: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                color: Colors.indigo[200]
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color:Colors.indigo[200])
              )
            ),
          ),
          
        ],
      )
    );
  
  }

  Widget insertPass(){
    return Container(
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              labelText: 'Contrasena',
              labelStyle: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                color: Colors.indigo[200]
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.indigo[200])
              )

            ),
            obscureText: true,
          ),
          SizedBox(
            height: 5.0,
          ),
          Container(
            alignment: Alignment(1.0, 0.0),
            padding: EdgeInsets.only(top:15.0, left: 20.0),
            child: InkWell(
              child: Text('Olvide mi contrasena',
              style: TextStyle(
                color: Colors.indigo[200],
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat',
                decoration: TextDecoration.underline

              ),)
            )
          )
        ],
      ),

    );
           

  }


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
    
          body: Container(
           padding: EdgeInsets.symmetric(horizontal: 20),
           decoration: BoxDecoration(color: Colors.white),
           child: ListView(
          
          children: [
            Container(
      padding: EdgeInsets.fromLTRB(10.0, 30.0, 0.0, 0.0),
      child: Text('Te lo llevamos',style: TextStyle(
        fontSize: 25.0, fontWeight: FontWeight.bold
      ),),
      ),
            Container(
      padding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
      child: Text('A tu hogar!',style: TextStyle(
        fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.indigo[200]
      ),),
      ),

      Image.asset('assets/images/food.png',
            alignment: Alignment.center,
            fit: BoxFit.contain, 
            width: 200.0, height: 120.0, scale: 10.5, ),
            
           insertEmail(),
           insertPass(),


      ///boton login
      SizedBox(height: 40.0,),
      Container(
        height: 40.0,
        child: Material(
          borderRadius: BorderRadius.circular(20.0),
          shadowColor: Colors.black,
          color: Colors.indigo[200],
          elevation: 7.0,
          child: GestureDetector(
            onTap: () {},
            child: Center(
              child: Text('Inicia Sesion',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat'

              ),
              ),
            ),
          ),
        ),

      ),

      ///boton iniciar con facebook
        SizedBox(height: 40.0,),
        Container(
          height: 40.0,
          child: Material(
            borderRadius: BorderRadius.circular(20.0),
            shadowColor: Colors.black,
            color: Colors.blue[400],
            elevation: 7.0,
            child: GestureDetector(
              onTap: () {},
              
              child: Row(
                children: <Widget>[
                  SizedBox(width: 40.0,),
                  Center(
                    child: ImageIcon(AssetImage('assets/images/facebook.png')),
                    
                  ),
                  SizedBox(width: 10.0,),
                  Center(
                    
                    child: Text('Inicia sesion con Facebook',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat'
                    )),
                  ),
                ],
              )
            ),
          )
        ),
        SizedBox(height: 15.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Nuevo por aqui?',
            style: TextStyle(
              fontFamily: 'Montserrat'
            ),),
            SizedBox(width: 5.0),
            
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/second');
              },
              child: Text('Resgistrate',
              style: TextStyle(
                color: Colors.indigo[200],
                fontFamily: 'Monserrat',
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline
              ),
              
              ),
              
          )
          
          ],
          

        )
        
            

          ]
        ),
      ),
    );

  }
}