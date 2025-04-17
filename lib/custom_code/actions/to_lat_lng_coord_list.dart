// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<LatLng>> toLatLngCoordList(List<dynamic> osrmCoordinates) async {
  List<LatLng> latLongList = [];
  for (int i = 0; i < osrmCoordinates.length; i++) {
    latLongList.add(LatLng(osrmCoordinates[i][1], osrmCoordinates[i][0]));
  }
  return latLongList;
}
