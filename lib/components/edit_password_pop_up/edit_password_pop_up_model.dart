import '/flutter_flow/flutter_flow_util.dart';
import 'edit_password_pop_up_widget.dart' show EditPasswordPopUpWidget;
import 'package:flutter/material.dart';

class EditPasswordPopUpModel extends FlutterFlowModel<EditPasswordPopUpWidget> {
  ///  Local state fields for this component.

  bool isConfirmPasswordSame = false;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for oldPassword widget.
  FocusNode? oldPasswordFocusNode;
  TextEditingController? oldPasswordTextController;
  late bool oldPasswordVisibility;
  String? Function(BuildContext, String?)? oldPasswordTextControllerValidator;
  String? _oldPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Old Password is required';
    }

    return null;
  }

  // State field(s) for newPassword widget.
  FocusNode? newPasswordFocusNode;
  TextEditingController? newPasswordTextController;
  late bool newPasswordVisibility;
  String? Function(BuildContext, String?)? newPasswordTextControllerValidator;
  String? _newPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'New Password is required';
    }

    return null;
  }

  // State field(s) for confirmNewPassword widget.
  FocusNode? confirmNewPasswordFocusNode;
  TextEditingController? confirmNewPasswordTextController;
  late bool confirmNewPasswordVisibility;
  String? Function(BuildContext, String?)?
      confirmNewPasswordTextControllerValidator;
  String? _confirmNewPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Confirm New Password is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    oldPasswordVisibility = false;
    oldPasswordTextControllerValidator = _oldPasswordTextControllerValidator;
    newPasswordVisibility = false;
    newPasswordTextControllerValidator = _newPasswordTextControllerValidator;
    confirmNewPasswordVisibility = false;
    confirmNewPasswordTextControllerValidator =
        _confirmNewPasswordTextControllerValidator;
  }

  @override
  void dispose() {
    oldPasswordFocusNode?.dispose();
    oldPasswordTextController?.dispose();

    newPasswordFocusNode?.dispose();
    newPasswordTextController?.dispose();

    confirmNewPasswordFocusNode?.dispose();
    confirmNewPasswordTextController?.dispose();
  }
}
