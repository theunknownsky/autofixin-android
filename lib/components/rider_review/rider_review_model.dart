import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'rider_review_widget.dart' show RiderReviewWidget;
import 'package:flutter/material.dart';

class RiderReviewModel extends FlutterFlowModel<RiderReviewWidget> {
  ///  Local state fields for this component.

  int? rating = 3;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ReviewsRecord? reviewCreated;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ReviewsRecord? reviewCreated1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
