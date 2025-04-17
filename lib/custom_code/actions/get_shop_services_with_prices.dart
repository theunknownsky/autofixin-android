// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<String>> getShopServicesWithPrices(
  List<String> shopServices,
  List<int> shopServicePrices,
) async {
  List<String> shopServicesWithPrices = [];
  for (int i = 0; i < shopServices.length; i++) {
    String service = shopServices[i];
    int price = shopServicePrices[i];
    String serviceWithPrice = "$service (Php $price)";
    shopServicesWithPrices.add(serviceWithPrice);
  }
  return shopServicesWithPrices;
}
