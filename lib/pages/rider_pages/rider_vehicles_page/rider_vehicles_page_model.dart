import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/rider_bottom_navbar/rider_bottom_navbar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/rider_pages/add_pop_up/add_pop_up_widget.dart';
import '/pages/rider_pages/delete_pop_up/delete_pop_up_widget.dart';
import '/pages/rider_pages/edit_pop_up/edit_pop_up_widget.dart';
import 'dart:ui';
import 'rider_vehicles_page_widget.dart' show RiderVehiclesPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RiderVehiclesPageModel extends FlutterFlowModel<RiderVehiclesPageWidget> {
  ///  Local state fields for this page.

  List<DocumentReference> vehiclesList = [];
  void addToVehiclesList(DocumentReference item) => vehiclesList.add(item);
  void removeFromVehiclesList(DocumentReference item) =>
      vehiclesList.remove(item);
  void removeAtIndexFromVehiclesList(int index) => vehiclesList.removeAt(index);
  void insertAtIndexInVehiclesList(int index, DocumentReference item) =>
      vehiclesList.insert(index, item);
  void updateVehiclesListAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      vehiclesList[index] = updateFn(vehiclesList[index]);

  ///  State fields for stateful widgets in this page.

  // Model for riderBottomNavbar component.
  late RiderBottomNavbarModel riderBottomNavbarModel;

  @override
  void initState(BuildContext context) {
    riderBottomNavbarModel =
        createModel(context, () => RiderBottomNavbarModel());
  }

  @override
  void dispose() {
    riderBottomNavbarModel.dispose();
  }
}
