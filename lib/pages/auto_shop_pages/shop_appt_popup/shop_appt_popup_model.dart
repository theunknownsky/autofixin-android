import '/flutter_flow/flutter_flow_util.dart';
import 'shop_appt_popup_widget.dart' show ShopApptPopupWidget;
import 'package:flutter/material.dart';

class ShopApptPopupModel extends FlutterFlowModel<ShopApptPopupWidget> {
  ///  Local state fields for this component.

  List<String> servicesWithPrice = [];
  void addToServicesWithPrice(String item) => servicesWithPrice.add(item);
  void removeFromServicesWithPrice(String item) =>
      servicesWithPrice.remove(item);
  void removeAtIndexFromServicesWithPrice(int index) =>
      servicesWithPrice.removeAt(index);
  void insertAtIndexInServicesWithPrice(int index, String item) =>
      servicesWithPrice.insert(index, item);
  void updateServicesWithPriceAtIndex(int index, Function(String) updateFn) =>
      servicesWithPrice[index] = updateFn(servicesWithPrice[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Custom Action - getShopServicesWithPrices] action in shopApptPopup widget.
  List<String>? serviceWithFees;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
