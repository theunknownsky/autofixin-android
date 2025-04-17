import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/digital_receipt/digital_receipt_widget.dart';
import '/components/shop_bottom_navbar/shop_bottom_navbar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'shop_transaction_record_page_widget.dart'
    show ShopTransactionRecordPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
