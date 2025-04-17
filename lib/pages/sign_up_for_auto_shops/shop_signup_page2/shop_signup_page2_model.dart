import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'shop_signup_page2_widget.dart' show ShopSignupPage2Widget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ShopSignupPage2Model extends FlutterFlowModel<ShopSignupPage2Widget> {
  ///  Local state fields for this page.

  List<String> services = ['Motor Repair', 'Car Repair'];
  void addToServices(String item) => services.add(item);
  void removeFromServices(String item) => services.remove(item);
  void removeAtIndexFromServices(int index) => services.removeAt(index);
  void insertAtIndexInServices(int index, String item) =>
      services.insert(index, item);
  void updateServicesAtIndex(int index, Function(String) updateFn) =>
      services[index] = updateFn(services[index]);

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for businessPermitNumber widget.
  FocusNode? businessPermitNumberFocusNode;
  TextEditingController? businessPermitNumberTextController;
  String? Function(BuildContext, String?)?
      businessPermitNumberTextControllerValidator;
  String? _businessPermitNumberTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Shop Name is required';
    }

    return null;
  }

  // State field(s) for serviceToAdd widget.
  FocusNode? serviceToAddFocusNode;
  TextEditingController? serviceToAddTextController;
  String? Function(BuildContext, String?)? serviceToAddTextControllerValidator;

  @override
  void initState(BuildContext context) {
    businessPermitNumberTextControllerValidator =
        _businessPermitNumberTextControllerValidator;
  }

  @override
  void dispose() {
    businessPermitNumberFocusNode?.dispose();
    businessPermitNumberTextController?.dispose();

    serviceToAddFocusNode?.dispose();
    serviceToAddTextController?.dispose();
  }
}
