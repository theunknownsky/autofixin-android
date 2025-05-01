import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'shop_chat_with_rider_page_widget.dart' show ShopChatWithRiderPageWidget;
import 'package:flutter/material.dart';

class ShopChatWithRiderPageModel
    extends FlutterFlowModel<ShopChatWithRiderPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for chatBox widget.
  FocusNode? chatBoxFocusNode;
  TextEditingController? chatBoxTextController;
  String? Function(BuildContext, String?)? chatBoxTextControllerValidator;
  // Stores action output result for [Backend Call - Read Document] action in Button widget.
  UsersRecord? userToReport;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    chatBoxFocusNode?.dispose();
    chatBoxTextController?.dispose();
  }
}
