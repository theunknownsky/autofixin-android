import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'shop_route_to_rider_location_model.dart';
export 'shop_route_to_rider_location_model.dart';

class ShopRouteToRiderLocationWidget extends StatefulWidget {
  const ShopRouteToRiderLocationWidget({
    super.key,
    required this.currentLocation,
    required this.riderLocation,
    required this.polylineCoordinates,
  });

  final LatLng? currentLocation;
  final LatLng? riderLocation;
  final List<LatLng>? polylineCoordinates;

  static String routeName = 'ShopRouteToRiderLocation';
  static String routePath = '/shopRouteToRiderLocation';

  @override
  State<ShopRouteToRiderLocationWidget> createState() =>
      _ShopRouteToRiderLocationWidgetState();
}

class _ShopRouteToRiderLocationWidgetState
    extends State<ShopRouteToRiderLocationWidget> {
  late ShopRouteToRiderLocationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShopRouteToRiderLocationModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Route',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 390.0,
                height: 744.0,
                child: custom_widgets.OsmShowPolylines(
                  width: 390.0,
                  height: 744.0,
                  currentLocation: widget.currentLocation!,
                  riderLocation: widget.riderLocation!,
                  polylineLatLngCoords: widget.polylineCoordinates!,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
