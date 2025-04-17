import '/backend/backend.dart';
import '/components/shop_bottom_navbar/shop_bottom_navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'shop_dashboard_page_widget.dart' show ShopDashboardPageWidget;
import 'package:flutter/material.dart';

class ShopDashboardPageModel extends FlutterFlowModel<ShopDashboardPageWidget> {
  ///  Local state fields for this page.

  List<TransactionsRecord> transactions = [];
  void addToTransactions(TransactionsRecord item) => transactions.add(item);
  void removeFromTransactions(TransactionsRecord item) =>
      transactions.remove(item);
  void removeAtIndexFromTransactions(int index) => transactions.removeAt(index);
  void insertAtIndexInTransactions(int index, TransactionsRecord item) =>
      transactions.insert(index, item);
  void updateTransactionsAtIndex(
          int index, Function(TransactionsRecord) updateFn) =>
      transactions[index] = updateFn(transactions[index]);

  List<AppointmentsRecord> appointmentStatus = [];
  void addToAppointmentStatus(AppointmentsRecord item) =>
      appointmentStatus.add(item);
  void removeFromAppointmentStatus(AppointmentsRecord item) =>
      appointmentStatus.remove(item);
  void removeAtIndexFromAppointmentStatus(int index) =>
      appointmentStatus.removeAt(index);
  void insertAtIndexInAppointmentStatus(int index, AppointmentsRecord item) =>
      appointmentStatus.insert(index, item);
  void updateAppointmentStatusAtIndex(
          int index, Function(AppointmentsRecord) updateFn) =>
      appointmentStatus[index] = updateFn(appointmentStatus[index]);

  DateTime? userCreation;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in ShopDashboardPage widget.
  List<TransactionsRecord>? transactionListAction;
  // Stores action output result for [Firestore Query - Query a collection] action in ShopDashboardPage widget.
  List<AppointmentsRecord>? appointmentListAction;
  // Stores action output result for [Firestore Query - Query a collection] action in ShopDashboardPage widget.
  List<UsersRecord>? userCreated;
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
