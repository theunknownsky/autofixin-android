import '/components/shop_bottom_navbar/shop_bottom_navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'shop_account_page_widget.dart' show ShopAccountPageWidget;
import 'package:flutter/material.dart';

class ShopAccountPageModel extends FlutterFlowModel<ShopAccountPageWidget> {
  ///  Local state fields for this page.

  List<String> shopServicesWithPrices = [];
  void addToShopServicesWithPrices(String item) =>
      shopServicesWithPrices.add(item);
  void removeFromShopServicesWithPrices(String item) =>
      shopServicesWithPrices.remove(item);
  void removeAtIndexFromShopServicesWithPrices(int index) =>
      shopServicesWithPrices.removeAt(index);
  void insertAtIndexInShopServicesWithPrices(int index, String item) =>
      shopServicesWithPrices.insert(index, item);
  void updateShopServicesWithPricesAtIndex(
          int index, Function(String) updateFn) =>
      shopServicesWithPrices[index] = updateFn(shopServicesWithPrices[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getShopServicesWithPrices] action in ShopAccountPage widget.
  List<String>? serviceAndPrice;
  // Model for shopBottomNavbar component.
  late ShopBottomNavbarModel shopBottomNavbarModel;

  @override
  void initState(BuildContext context) {
    shopBottomNavbarModel = createModel(context, () => ShopBottomNavbarModel());
  }

  @override
  void dispose() {
    shopBottomNavbarModel.dispose();
  }
}
