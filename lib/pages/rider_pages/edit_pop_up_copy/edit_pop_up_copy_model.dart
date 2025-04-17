import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'edit_pop_up_copy_widget.dart' show EditPopUpCopyWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditPopUpCopyModel extends FlutterFlowModel<EditPopUpCopyWidget> {
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
