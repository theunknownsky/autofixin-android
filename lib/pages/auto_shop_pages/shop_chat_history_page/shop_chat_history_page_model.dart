import '/components/shop_bottom_navbar/shop_bottom_navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'shop_chat_history_page_widget.dart' show ShopChatHistoryPageWidget;
import 'package:flutter/material.dart';

class ShopChatHistoryPageModel
    extends FlutterFlowModel<ShopChatHistoryPageWidget> {
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
