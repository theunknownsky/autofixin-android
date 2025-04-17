import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import '/index.dart';
import 'rider_bottom_navbar_widget.dart' show RiderBottomNavbarWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RiderBottomNavbarModel extends FlutterFlowModel<RiderBottomNavbarWidget> {
  ///  Local state fields for this component.

  int? activeNavbar = 1;

  Color? mapColor = Color(4283917164);

  Color? vehicleColor = Color(4283917164);

  Color? chatColor = Color(4283917164);

  Color? accountColor = Color(4283917164);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
