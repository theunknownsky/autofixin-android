import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'rider_appointment_sheet2_widget.dart' show RiderAppointmentSheet2Widget;
import 'package:flutter/material.dart';

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

  @override
  void initState(BuildContext context) {
    problemFieldTextControllerValidator = _problemFieldTextControllerValidator;
  }

  @override
  void dispose() {
    vehicleDisplayFocusNode?.dispose();
    vehicleDisplayTextController?.dispose();

    problemFieldFocusNode?.dispose();
    problemFieldTextController?.dispose();
  }
}
