import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'edit_shop_details_pop_up_widget.dart' show EditShopDetailsPopUpWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditShopDetailsPopUpModel
    extends FlutterFlowModel<EditShopDetailsPopUpWidget> {
  ///  Local state fields for this component.

  List<String> services = [];
  void addToServices(String item) => services.add(item);
  void removeFromServices(String item) => services.remove(item);
  void removeAtIndexFromServices(int index) => services.removeAt(index);
  void insertAtIndexInServices(int index, String item) =>
      services.insert(index, item);
  void updateServicesAtIndex(int index, Function(String) updateFn) =>
      services[index] = updateFn(services[index]);

  DateTime? openingHour;

  DateTime? closingHour;

  List<int> servicePrices = [];
  void addToServicePrices(int item) => servicePrices.add(item);
  void removeFromServicePrices(int item) => servicePrices.remove(item);
  void removeAtIndexFromServicePrices(int index) =>
      servicePrices.removeAt(index);
  void insertAtIndexInServicePrices(int index, int item) =>
      servicePrices.insert(index, item);
  void updateServicePricesAtIndex(int index, Function(int) updateFn) =>
      servicePrices[index] = updateFn(servicePrices[index]);

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for serviceToAdd widget.
  FocusNode? serviceToAddFocusNode;
  TextEditingController? serviceToAddTextController;
  String? Function(BuildContext, String?)? serviceToAddTextControllerValidator;
  // State field(s) for servicePriceToAdd widget.
  FocusNode? servicePriceToAddFocusNode;
  TextEditingController? servicePriceToAddTextController;
  String? Function(BuildContext, String?)?
      servicePriceToAddTextControllerValidator;
  // State field(s) for towAvailability widget.
  bool? towAvailabilityValue;
  DateTime? datePicked1;
  DateTime? datePicked2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    serviceToAddFocusNode?.dispose();
    serviceToAddTextController?.dispose();

    servicePriceToAddFocusNode?.dispose();
    servicePriceToAddTextController?.dispose();
  }
}
