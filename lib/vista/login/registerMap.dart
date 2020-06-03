

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';



class RegisterMap extends StatefulWidget{
final LatLng fromPoint = LatLng(-38.956176, -67.920666);

  @override
  _RegisterMapState createState() => _RegisterMapState();
}

class _RegisterMapState extends State<RegisterMap> {

  

  @override
  Widget build(BuildContext context) {
    return GoogleMap(initialCameraPosition: CameraPosition(
      target: widget.fromPoint,
      zoom: 12,
      ),
      


      /*
      body: Stack(
        children: <Widget>[
          GoogleMap(initialCameraPosition: _initialPosition,
          onMapCreated: _onMapCreated,),
          Positioned(top:30.0 ,
          right: 15.0,
          left: 15.0,
            child: Container(
              height: 50.0,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Ingrese Su Ubicacion',
                  border: InputBorder.none,
                ),
              ),
            ))
         
        ],

      ),*/
    );
  }
}