import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import '/index.dart';
import 'shop_bottom_navbar_widget.dart' show ShopBottomNavbarWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ShopBottomNavbarModel extends FlutterFlowModel<ShopBottomNavbarWidget> {
  ///  Local state fields for this component.

  int? activeNavbar = 1;

  Color? dashboardColor = Color(4283917164);

  Color? appointmentColor = Color(4283917164);

  Color? chatColor = Color(4283917164);

  Color? accountColor = Color(4283917164);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
