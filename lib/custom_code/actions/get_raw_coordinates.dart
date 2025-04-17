// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<double>> getRawCoordinates(LatLng coordinates) async {
  List<double> rawCoordinates = [0, 0];
  if (coordinates.latitude == 0 && coordinates.longitude == 0) {
    rawCoordinates[0] = 14.322649;
    rawCoordinates[1] = 120.947177;
    // this is for default current shop location (Jerick Shop)
    // if in test mode
  } else {
    rawCoordinates[0] = coordinates.latitude;
    rawCoordinates[1] = coordinates.longitude;
  }

  return rawCoordinates;
}
