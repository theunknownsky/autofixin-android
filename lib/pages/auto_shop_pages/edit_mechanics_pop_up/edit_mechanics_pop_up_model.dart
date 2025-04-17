import '/flutter_flow/flutter_flow_util.dart';
import 'edit_mechanics_pop_up_widget.dart' show EditMechanicsPopUpWidget;
import 'package:flutter/material.dart';

class EditMechanicsPopUpModel
    extends FlutterFlowModel<EditMechanicsPopUpWidget> {
  ///  Local state fields for this component.

  List<String> mechanics = [];
  void addToMechanics(String item) => mechanics.add(item);
  void removeFromMechanics(String item) => mechanics.remove(item);
  void removeAtIndexFromMechanics(int index) => mechanics.removeAt(index);
  void insertAtIndexInMechanics(int index, String item) =>
      mechanics.insert(index, item);
  void updateMechanicsAtIndex(int index, Function(String) updateFn) =>
      mechanics[index] = updateFn(mechanics[index]);

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for mechanicToAdd widget.
  FocusNode? mechanicToAddFocusNode;
  TextEditingController? mechanicToAddTextController;
  String? Function(BuildContext, String?)? mechanicToAddTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    mechanicToAddFocusNode?.dispose();
    mechanicToAddTextController?.dispose();
  }
}
