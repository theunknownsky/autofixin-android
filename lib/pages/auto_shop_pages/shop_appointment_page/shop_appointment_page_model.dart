import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/shop_bottom_navbar/shop_bottom_navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'shop_appointment_page_widget.dart' show ShopAppointmentPageWidget;
import 'package:flutter/material.dart';

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
