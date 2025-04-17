import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_pop_up_widget.dart' show AddPopUpWidget;
import 'package:flutter/material.dart';

class AddPopUpModel extends FlutterFlowModel<AddPopUpWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for manucafturerField widget.
  FocusNode? manucafturerFieldFocusNode;
  TextEditingController? manucafturerFieldTextController;
  String? Function(BuildContext, String?)?
      manucafturerFieldTextControllerValidator;
  // State field(s) for yearField widget.
  FocusNode? yearFieldFocusNode;
  TextEditingController? yearFieldTextController;
  String? Function(BuildContext, String?)? yearFieldTextControllerValidator;
  // State field(s) for modelField widget.
  FocusNode? modelFieldFocusNode;
  TextEditingController? modelFieldTextController;
  String? Function(BuildContext, String?)? modelFieldTextControllerValidator;
  // State field(s) for colorField widget.
  FocusNode? colorFieldFocusNode;
  TextEditingController? colorFieldTextController;
  String? Function(BuildContext, String?)? colorFieldTextControllerValidator;
  // State field(s) for plateNumberField widget.
  FocusNode? plateNumberFieldFocusNode;
  TextEditingController? plateNumberFieldTextController;
  String? Function(BuildContext, String?)?
      plateNumberFieldTextControllerValidator;
  // State field(s) for typeDropDown widget.
  String? typeDropDownValue;
  FormFieldController<String>? typeDropDownValueController;
  // State field(s) for transmissionDropDown widget.
  String? transmissionDropDownValue;
  FormFieldController<String>? transmissionDropDownValueController;
  // Stores action output result for [Backend Call - Create Document] action in addButton widget.
  VehiclesRecord? vehicleCreated;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    manucafturerFieldFocusNode?.dispose();
    manucafturerFieldTextController?.dispose();

    yearFieldFocusNode?.dispose();
    yearFieldTextController?.dispose();

    modelFieldFocusNode?.dispose();
    modelFieldTextController?.dispose();

    colorFieldFocusNode?.dispose();
    colorFieldTextController?.dispose();

    plateNumberFieldFocusNode?.dispose();
    plateNumberFieldTextController?.dispose();
  }
}
