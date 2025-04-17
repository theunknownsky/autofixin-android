import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'shop_chat_with_rider_page_widget.dart' show ShopChatWithRiderPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ShopChatWithRiderPageModel
    extends FlutterFlowModel<ShopChatWithRiderPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for chatBox widget.
  FocusNode? chatBoxFocusNode;
  TextEditingController? chatBoxTextController;
  String? Function(BuildContext, String?)? chatBoxTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    chatBoxFocusNode?.dispose();
    chatBoxTextController?.dispose();
  }
}
