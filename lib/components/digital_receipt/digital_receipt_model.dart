import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import 'digital_receipt_widget.dart' show DigitalReceiptWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DigitalReceiptModel extends FlutterFlowModel<DigitalReceiptWidget> {
  ///  Local state fields for this component.

  List<String> servicesWithFees = [];
  void addToServicesWithFees(String item) => servicesWithFees.add(item);
  void removeFromServicesWithFees(String item) => servicesWithFees.remove(item);
  void removeAtIndexFromServicesWithFees(int index) =>
      servicesWithFees.removeAt(index);
  void insertAtIndexInServicesWithFees(int index, String item) =>
      servicesWithFees.insert(index, item);
  void updateServicesWithFeesAtIndex(int index, Function(String) updateFn) =>
      servicesWithFees[index] = updateFn(servicesWithFees[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Custom Action - getShopServicesWithPrices] action in digitalReceipt widget.
  List<String>? serviceWithFee;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
