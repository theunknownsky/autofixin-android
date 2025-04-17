import '/flutter_flow/flutter_flow_util.dart';
import 'service_fee_pop_up_widget.dart' show ServiceFeePopUpWidget;
import 'package:flutter/material.dart';

class ServiceFeePopUpModel extends FlutterFlowModel<ServiceFeePopUpWidget> {
  ///  Local state fields for this component.

  int totalServiceFee = 0;

  List<String> additionalServices = [];
  void addToAdditionalServices(String item) => additionalServices.add(item);
  void removeFromAdditionalServices(String item) =>
      additionalServices.remove(item);
  void removeAtIndexFromAdditionalServices(int index) =>
      additionalServices.removeAt(index);
  void insertAtIndexInAdditionalServices(int index, String item) =>
      additionalServices.insert(index, item);
  void updateAdditionalServicesAtIndex(int index, Function(String) updateFn) =>
      additionalServices[index] = updateFn(additionalServices[index]);

  List<int> additionalServicesFees = [];
  void addToAdditionalServicesFees(int item) =>
      additionalServicesFees.add(item);
  void removeFromAdditionalServicesFees(int item) =>
      additionalServicesFees.remove(item);
  void removeAtIndexFromAdditionalServicesFees(int index) =>
      additionalServicesFees.removeAt(index);
  void insertAtIndexInAdditionalServicesFees(int index, int item) =>
      additionalServicesFees.insert(index, item);
  void updateAdditionalServicesFeesAtIndex(int index, Function(int) updateFn) =>
      additionalServicesFees[index] = updateFn(additionalServicesFees[index]);

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for serviceFeeField widget.
  FocusNode? serviceFeeFieldFocusNode;
  TextEditingController? serviceFeeFieldTextController;
  String? Function(BuildContext, String?)?
      serviceFeeFieldTextControllerValidator;
  String? _serviceFeeFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Old Password is required';
    }

    return null;
  }

  // State field(s) for addServiceField widget.
  FocusNode? addServiceFieldFocusNode;
  TextEditingController? addServiceFieldTextController;
  String? Function(BuildContext, String?)?
      addServiceFieldTextControllerValidator;
  // State field(s) for servicePriceToAdd widget.
  FocusNode? servicePriceToAddFocusNode;
  TextEditingController? servicePriceToAddTextController;
  String? Function(BuildContext, String?)?
      servicePriceToAddTextControllerValidator;

  @override
  void initState(BuildContext context) {
    serviceFeeFieldTextControllerValidator =
        _serviceFeeFieldTextControllerValidator;
  }

  @override
  void dispose() {
    serviceFeeFieldFocusNode?.dispose();
    serviceFeeFieldTextController?.dispose();

    addServiceFieldFocusNode?.dispose();
    addServiceFieldTextController?.dispose();

    servicePriceToAddFocusNode?.dispose();
    servicePriceToAddTextController?.dispose();
  }
}
