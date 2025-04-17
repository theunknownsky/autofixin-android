import '/components/rider_bottom_navbar/rider_bottom_navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'rider_vehicles_page_widget.dart' show RiderVehiclesPageWidget;
import 'package:flutter/material.dart';

class RiderVehiclesPageModel extends FlutterFlowModel<RiderVehiclesPageWidget> {
  ///  Local state fields for this page.

  List<DocumentReference> vehiclesList = [];
  void addToVehiclesList(DocumentReference item) => vehiclesList.add(item);
  void removeFromVehiclesList(DocumentReference item) =>
      vehiclesList.remove(item);
  void removeAtIndexFromVehiclesList(int index) => vehiclesList.removeAt(index);
  void insertAtIndexInVehiclesList(int index, DocumentReference item) =>
      vehiclesList.insert(index, item);
  void updateVehiclesListAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      vehiclesList[index] = updateFn(vehiclesList[index]);

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
