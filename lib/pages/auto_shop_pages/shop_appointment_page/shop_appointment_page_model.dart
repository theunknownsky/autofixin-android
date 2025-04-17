import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/shop_bottom_navbar/shop_bottom_navbar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/auto_shop_pages/service_fee_pop_up/service_fee_pop_up_widget.dart';
import '/pages/auto_shop_pages/shop_appt_popup/shop_appt_popup_widget.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'shop_appointment_page_widget.dart' show ShopAppointmentPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ShopAppointmentPageModel
    extends FlutterFlowModel<ShopAppointmentPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  TransactionsRecord? createdTransaction;
  // Stores action output result for [Custom Action - getRawCoordinates] action in Button widget.
  List<double>? curLocAction;
  // Stores action output result for [Custom Action - getRawCoordinates] action in Button widget.
  List<double>? riderLocAction;
  // Stores action output result for [Backend Call - API (OsrmApi)] action in Button widget.
  ApiCallResponse? osrmApiAction;
  // Stores action output result for [Custom Action - toLatLngCoordList] action in Button widget.
  List<LatLng>? toPolyCoords;
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
