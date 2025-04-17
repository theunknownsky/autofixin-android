import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'shop_details_widget.dart' show ShopDetailsWidget;
import 'package:flutter/material.dart';

class ShopDetailsModel extends FlutterFlowModel<ShopDetailsWidget> {
  ///  Local state fields for this component.

  int? revCount;

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

  // Stores action output result for [Firestore Query - Query a collection] action in shopDetails widget.
  int? reviewCount;
  // Stores action output result for [Custom Action - getShopServicesWithPrices] action in shopDetails widget.
  List<String>? serviceWithPrices;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  int? chatExists;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  MessagesRecord? introMessage;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ChatsRecord? createdChat;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  ChatsRecord? existingChat;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
