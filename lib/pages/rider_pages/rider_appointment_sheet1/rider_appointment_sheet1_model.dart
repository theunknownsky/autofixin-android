import '/backend/backend.dart';
import '/components/rider_bottom_navbar/rider_bottom_navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'rider_appointment_sheet1_widget.dart' show RiderAppointmentSheet1Widget;
import 'package:flutter/material.dart';

class RiderAppointmentSheet1Model
    extends FlutterFlowModel<RiderAppointmentSheet1Widget> {
  ///  Local state fields for this page.

  VehiclesRecord? selectedCar;

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
