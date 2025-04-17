import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/get_shop_location_component/get_shop_location_component_widget.dart';
import '/components/rider_bottom_navbar/rider_bottom_navbar_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/permissions_util.dart';
import '/index.dart';
import 'rider_appointment_sheet2_widget.dart' show RiderAppointmentSheet2Widget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RiderAppointmentSheet2Model
    extends FlutterFlowModel<RiderAppointmentSheet2Widget> {
  ///  Local state fields for this page.

  List<String> servicesWithPrices = [];
  void addToServicesWithPrices(String item) => servicesWithPrices.add(item);
  void removeFromServicesWithPrices(String item) =>
      servicesWithPrices.remove(item);
  void removeAtIndexFromServicesWithPrices(int index) =>
      servicesWithPrices.removeAt(index);
  void insertAtIndexInServicesWithPrices(int index, String item) =>
      servicesWithPrices.insert(index, item);
  void updateServicesWithPricesAtIndex(int index, Function(String) updateFn) =>
      servicesWithPrices[index] = updateFn(servicesWithPrices[index]);

  List<int> serviceIndex = [];
  void addToServiceIndex(int item) => serviceIndex.add(item);
  void removeFromServiceIndex(int item) => serviceIndex.remove(item);
  void removeAtIndexFromServiceIndex(int index) => serviceIndex.removeAt(index);
  void insertAtIndexInServiceIndex(int index, int item) =>
      serviceIndex.insert(index, item);
  void updateServiceIndexAtIndex(int index, Function(int) updateFn) =>
      serviceIndex[index] = updateFn(serviceIndex[index]);

  LatLng? currentLocation;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Custom Action - getShopServicesWithPrices] action in RiderAppointmentSheet2 widget.
  List<String>? servicesWithPricesAction;
  // Stores action output result for [Custom Action - getServiceIndex] action in RiderAppointmentSheet2 widget.
  List<int>? servicesIndexesAction;
  // State field(s) for vehicleDisplay widget.
  FocusNode? vehicleDisplayFocusNode;
  TextEditingController? vehicleDisplayTextController;
  String? Function(BuildContext, String?)?
      vehicleDisplayTextControllerValidator;
  // State field(s) for problemField widget.
  FocusNode? problemFieldFocusNode;
  TextEditingController? problemFieldTextController;
  String? Function(BuildContext, String?)? problemFieldTextControllerValidator;
  String? _problemFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'State your issue or concern.';
    }

    return null;
  }

  // State field(s) for serviceDropdown widget.
  int? serviceDropdownValue;
  FormFieldController<int>? serviceDropdownValueController;
  // Stores action output result for [Backend Call - Create Document] action in submitButton widget.
  AppointmentsRecord? apptDoc;
  // Model for riderBottomNavbar component.
  late RiderBottomNavbarModel riderBottomNavbarModel;

  @override
  void initState(BuildContext context) {
    problemFieldTextControllerValidator = _problemFieldTextControllerValidator;
    riderBottomNavbarModel =
        createModel(context, () => RiderBottomNavbarModel());
  }

  @override
  void dispose() {
    vehicleDisplayFocusNode?.dispose();
    vehicleDisplayTextController?.dispose();

    problemFieldFocusNode?.dispose();
    problemFieldTextController?.dispose();

    riderBottomNavbarModel.dispose();
  }
}
