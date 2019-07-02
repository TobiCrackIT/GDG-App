import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  
  CameraPosition initialPosition=CameraPosition(target: LatLng(6.4698, 3.5852),zoom:3.0);
  Completer<GoogleMapController> mapController=Completer();

  void createMap(GoogleMapController gcm){
    mapController.complete(gcm);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(elevation: 0.0,centerTitle:true, title:new Text("Location",style: new TextStyle(color: Colors.black,fontSize: 14.0),),backgroundColor: Colors.transparent,),
      body: Stack(
        children: <Widget>[
          /*ListView(
            children: <Widget>[*/
              GoogleMap(
                initialCameraPosition: initialPosition,
                onMapCreated: createMap,
                myLocationEnabled: true,
                scrollGesturesEnabled: true,
                zoomGesturesEnabled: true,
              ),
            ],
          /*)
        ],*/

      ),
    );
  }
}
