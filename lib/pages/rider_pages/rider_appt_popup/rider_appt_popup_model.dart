import '/flutter_flow/flutter_flow_util.dart';
import 'rider_appt_popup_widget.dart' show RiderApptPopupWidget;
import 'package:flutter/material.dart';

class RiderApptPopupModel extends FlutterFlowModel<RiderApptPopupWidget> {
  ///  Local state fields for this component.

  List<String> servicesWithFees = [];
  void addToServicesWithFees(String item) => servicesWithFees.add(item);
  void removeFromServicesWithFees(String item) => servicesWithFees.remove(item);
  void removeAtIndexFromServicesWithFees(int index) =>
      servicesWithFees.removeAt(index);
  void insertAtIndexInServicesWithFees(int index, String item) =>
      servicesWithFees.insert(index, item);
  void updateServicesWithFeesAtIndex(int index, Function(String) updateFn) =>
      servicesWithFees[index] = updateFn(servicesWithFees[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Custom Action - getShopServicesWithPrices] action in riderApptPopup widget.
  List<String>? serviceWithFees;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
