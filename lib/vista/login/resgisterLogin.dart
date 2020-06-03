import 'package:flutter/material.dart';

bool _checkBoxValue = false;
void onChanged (bool value)  {
 _checkBoxValue = value;

}
class RegisterLogin extends StatelessWidget{  

 
  @override
  
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF9FA8DA),
        title:const Text('Registro'),

      ),
      

          body: Container(
            
        padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: 'Nombre',
                labelStyle: TextStyle(
                  fontFamily: 'Monserrat',
                  fontWeight: FontWeight.bold,
                  color: Colors.grey
                )
              )
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Apellidos',
                labelStyle: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  color: Colors.grey
                )
              )
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Correo ',
                labelStyle: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  color: Colors.grey
                )
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Contrasena',
                labelStyle: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  color: Colors.grey
                )
              ),
              obscureText: true,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Confirmar contrasena',
                labelStyle: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  color: Colors.grey
                )
              ),
              obscureText: true,

            ),
            
            SizedBox(height: 80.0),
            Row(
              
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: <Widget>[
                InkWell(
                  onTap: () {},
                  child: Text('Terminos y condiciones', 
                  style: TextStyle(
                    color: Colors.indigo[200],
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline
                  ),
                  ),
                  
                )
                

              ],
              
            ),
            

            Container(
              padding: EdgeInsets.all(20.0),
              child: Center(
                child: Column(
                  children: <Widget>[
                    new Row(
                      children: <Widget>[
                        
                        Checkbox(value:_checkBoxValue, 
                    onChanged: (bool value){
                      onChanged(value);
                    }

                    ),
                      Text('Acepto los terminos y condiciones'),
                      ],
                    )

                    
                  ],
                ),
              ),
              


              ),
              SizedBox(
                height: 40.0
              ),
              Container(
                height: 40.0,
                child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  shadowColor: Colors.black,
                  color: Colors.indigo[200],
                  elevation: 7.0,
                  child: GestureDetector(
                    
                    onTap: (){
                      Navigator.pushNamed(context, '/map');
                    },
                    child: Center(
                      child: Text('Continuar',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat'

                      ),
                      ),
                      
                    )
                  ),
                ),

              )

            
          ],
        )


        
      ),
      
      
    );
    
    



  }
 
  








 /* @override
    Widget build(BuildContext context) {

      

      SizedBox(height: 40.0);
      return Container(
        
        height: 40.0,
        child: Material(
          borderRadius: BorderRadius.circular(20.0),
          shadowColor: Colors.black,
          color: Colors.indigo[200],
          elevation: 7.0,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
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

      );
      
      
    }*/
    
    //  return Container(

      //child: Scaffold(
        
        //appBar: AppBar(
          //title: Text("Second Screen"),
        //),
        //body: Center(
          //child: RaisedButton(
            //onPressed: () {
            //Navigator.pop(context);
            //},
            //child: Text('Go back!'),
          //),
        //),
      //),
  //);
    }


