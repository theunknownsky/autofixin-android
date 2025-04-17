import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/rider_bottom_navbar/rider_bottom_navbar_widget.dart';
import '/components/rider_review/rider_review_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/rider_pages/rider_appt_popup/rider_appt_popup_widget.dart';
import '/pages/rider_pages/to_pay_pop_up/to_pay_pop_up_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'rider_appointment_page_widget.dart' show RiderAppointmentPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RiderAppointmentPageModel
    extends FlutterFlowModel<RiderAppointmentPageWidget> {
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
