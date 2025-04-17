import '/components/shop_bottom_navbar/shop_bottom_navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'shop_transaction_record_page_widget.dart'
    show ShopTransactionRecordPageWidget;
import 'package:flutter/material.dart';

class ShopTransactionRecordPageModel
    extends FlutterFlowModel<ShopTransactionRecordPageWidget> {
  ///  State fields for stateful widgets in this page.

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
