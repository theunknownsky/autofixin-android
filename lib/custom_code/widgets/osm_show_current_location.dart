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

class OsmShowCurrentLocation extends StatefulWidget {
  const OsmShowCurrentLocation({
    super.key,
    this.width,
    this.height,
    required this.currentLocation,
  });

  final double? width;
  final double? height;
  final LatLng currentLocation;

  @override
  State<OsmShowCurrentLocation> createState() => _OsmShowCurrentLocationState();
}

class _OsmShowCurrentLocationState extends State<OsmShowCurrentLocation> {
  final MapController _mapController = MapController();
  late double curLat;
  late double curLong;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    try {
      curLat = widget.currentLocation!.latitude;
      curLong = widget.currentLocation!.longitude;
    } catch (e) {
      curLat = 14.327520;
      curLong = 120.940792;
    }
    if (curLat == 0 && curLong == 0) {
      curLat = 14.327520;
      curLong = 120.940792;
    }
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
          markers: [
            Marker(
              point: ll.LatLng(curLat, curLong),
              width: 60,
              height: 60,
              alignment: Alignment.center,
              child: Icon(
                Icons.my_location,
                size: 60,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
