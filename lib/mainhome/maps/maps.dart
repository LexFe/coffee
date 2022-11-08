import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Maps extends StatefulWidget {
  const Maps({super.key});

  State<Maps> createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  static const _initialCameraPosition = CameraPosition(
      target: LatLng(37.42796133580664, -122.085749655962), zoom: 14.4746);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Image.asset("assets/images/map.png", fit: BoxFit.cover),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
      ),
      // body: GoogleMap(
      //   initialCameraPosition: _initialCameraPosition,

      // ),
    );
  }
}
