// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart' as ll;

class OsmShowPolylines extends StatefulWidget {
  const OsmShowPolylines({
    super.key,
    this.width,
    this.height,
    required this.currentLocation,
    required this.riderLocation,
    required this.polylineLatLngCoords,
  });

  final double? width;
  final double? height;
  final LatLng currentLocation;
  final LatLng riderLocation;
  final List<LatLng> polylineLatLngCoords;

  @override
  State<OsmShowPolylines> createState() => _OsmShowPolylinesState();
}

class _OsmShowPolylinesState extends State<OsmShowPolylines> {
  final MapController _mapController = MapController();
  late double curLat;
  late double curLong;
  late double riderLat;
  late double riderLong;
  List<Marker> markers = [];
  List<ll.LatLng> polylineCoords = [];

  void getPolylineCoords() {
    for (int i = 0; i < widget.polylineLatLngCoords.length; i++) {
      double latCoord = widget.polylineLatLngCoords[i].latitude;
      double longCoord = widget.polylineLatLngCoords[i].longitude;
      polylineCoords.add(ll.LatLng(latCoord, longCoord));
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    try {
      curLat = widget.currentLocation.latitude;
      curLong = widget.currentLocation.longitude;
      riderLat = widget.riderLocation.latitude;
      riderLong = widget.riderLocation.longitude;
    } catch (e) {
      curLat = 14.322649;
      curLong = 120.947177;
    }
    if (curLat == 0 && curLong == 0) {
      curLat = 14.322649;
      curLong = 120.947177;
    }
    markers.add(
      Marker(
        point: ll.LatLng(curLat, curLong),
        width: 45,
        height: 45,
        alignment: Alignment.center,
        child: Icon(
          Icons.my_location,
          size: 45,
          color: Colors.red,
        ),
      ),
    );
    markers.add(
      Marker(
        point: ll.LatLng(riderLat, riderLong),
        width: 45,
        height: 45,
        alignment: Alignment.center,
        child: Icon(
          Icons.location_on,
          size: 45,
          color: Colors.red,
        ),
      ),
    );
    getPolylineCoords();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      mapController: _mapController,
      options: MapOptions(
        initialCenter: ll.LatLng(curLat, curLong),
        initialZoom: 17,
        minZoom: 14,
        maxZoom: 19,
        interactionOptions: const InteractionOptions(
          flags: InteractiveFlag.all &
              ~InteractiveFlag.rotate &
              ~InteractiveFlag.pinchMove,
        ),
      ),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'com.testMap.app',
          maxZoom: 19,
        ),
        MarkerLayer(
          markers: markers,
        ),
        PolylineLayer(
          polylines: [
            Polyline(
              points: polylineCoords,
              color: Colors.blue,
              strokeWidth: 5,
            ),
          ],
        ),
      ],
    );
  }
}
