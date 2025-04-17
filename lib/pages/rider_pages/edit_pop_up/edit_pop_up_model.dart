import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'edit_pop_up_widget.dart' show EditPopUpWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditPopUpModel extends FlutterFlowModel<EditPopUpWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for manucafturerField widget.
  FocusNode? manucafturerFieldFocusNode;
  TextEditingController? manucafturerFieldTextController;
  String? Function(BuildContext, String?)?
      manucafturerFieldTextControllerValidator;
  String? _manucafturerFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Vehicle Manufacturer is required';
    }

    return null;
  }

  // State field(s) for yearField widget.
  FocusNode? yearFieldFocusNode;
  TextEditingController? yearFieldTextController;
  String? Function(BuildContext, String?)? yearFieldTextControllerValidator;
  String? _yearFieldTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Vehicle Year is required';
    }

    if (!RegExp('^(197[0-9]|198[0-9]|199[0-9]|20[0-1][0-9]|202[0-5])\$')
        .hasMatch(val)) {
      return 'Must be 1970 to 2025';
    }
    return null;
  }

  // State field(s) for modelField widget.
  FocusNode? modelFieldFocusNode;
  TextEditingController? modelFieldTextController;
  String? Function(BuildContext, String?)? modelFieldTextControllerValidator;
  String? _modelFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Vehicle Model is required';
    }

    return null;
  }

  // State field(s) for colorField widget.
  FocusNode? colorFieldFocusNode;
  TextEditingController? colorFieldTextController;
  String? Function(BuildContext, String?)? colorFieldTextControllerValidator;
  String? _colorFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Vehicle Color is required';
    }

    return null;
  }

  // State field(s) for plateNumberField widget.
  FocusNode? plateNumberFieldFocusNode;
  TextEditingController? plateNumberFieldTextController;
  String? Function(BuildContext, String?)?
      plateNumberFieldTextControllerValidator;
  String? _plateNumberFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'License Plate Number is required';
    }

    return null;
  }

  // State field(s) for vehicleTypeField widget.
  String? vehicleTypeFieldValue;
  FormFieldController<String>? vehicleTypeFieldValueController;
  // State field(s) for transmissionrField widget.
  String? transmissionrFieldValue;
  FormFieldController<String>? transmissionrFieldValueController;

  @override
  void initState(BuildContext context) {
    manucafturerFieldTextControllerValidator =
        _manucafturerFieldTextControllerValidator;
    yearFieldTextControllerValidator = _yearFieldTextControllerValidator;
    modelFieldTextControllerValidator = _modelFieldTextControllerValidator;
    colorFieldTextControllerValidator = _colorFieldTextControllerValidator;
    plateNumberFieldTextControllerValidator =
        _plateNumberFieldTextControllerValidator;
  }

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
