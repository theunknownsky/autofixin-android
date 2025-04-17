import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'rider_chat_with_shop_page_widget.dart' show RiderChatWithShopPageWidget;
import 'package:flutter/material.dart';

class RiderChatWithShopPageModel
    extends FlutterFlowModel<RiderChatWithShopPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for chatBox widget.
  FocusNode? chatBoxFocusNode;
  TextEditingController? chatBoxTextController;
  String? Function(BuildContext, String?)? chatBoxTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in sendMessage widget.
  MessagesRecord? sentMessage;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    chatBoxFocusNode?.dispose();
    chatBoxTextController?.dispose();
  }
}
