import '/components/rider_bottom_navbar/rider_bottom_navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'rider_map_view_page_widget.dart' show RiderMapViewPageWidget;
import 'package:flutter/material.dart';

class RiderMapViewPageModel extends FlutterFlowModel<RiderMapViewPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for riderBottomNavbar component.
  late RiderBottomNavbarModel riderBottomNavbarModel;

  @override
  void initState(BuildContext context) {
    riderBottomNavbarModel =
        createModel(context, () => RiderBottomNavbarModel());
  }

  @override
  void dispose() {
    riderBottomNavbarModel.dispose();
  }
}
