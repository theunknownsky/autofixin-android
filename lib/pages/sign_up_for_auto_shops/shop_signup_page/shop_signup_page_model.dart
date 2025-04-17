import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'shop_signup_page_widget.dart' show ShopSignupPageWidget;
import 'package:flutter/material.dart';

class ShopSignupPageModel extends FlutterFlowModel<ShopSignupPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for shopName widget.
  FocusNode? shopNameFocusNode;
  TextEditingController? shopNameTextController;
  String? Function(BuildContext, String?)? shopNameTextControllerValidator;
  String? _shopNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Shop Name is required';
    }

    return null;
  }

  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {
    shopNameTextControllerValidator = _shopNameTextControllerValidator;
    emailTextControllerValidator = _emailTextControllerValidator;
  }

  @override
  void dispose() {
    shopNameFocusNode?.dispose();
    shopNameTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();
  }
}
