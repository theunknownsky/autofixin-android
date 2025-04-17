import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'get_route_to_rider_model.dart';
export 'get_route_to_rider_model.dart';

class GetRouteToRiderWidget extends StatefulWidget {
  const GetRouteToRiderWidget({
    super.key,
    required this.currentLocation,
    required this.riderLocation,
    required this.polylineCoordinates,
  });

  final LatLng? currentLocation;
  final LatLng? riderLocation;
  final List<LatLng>? polylineCoordinates;

  @override
  State<GetRouteToRiderWidget> createState() => _GetRouteToRiderWidgetState();
}

class _GetRouteToRiderWidgetState extends State<GetRouteToRiderWidget> {
  late GetRouteToRiderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GetRouteToRiderModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: MediaQuery.sizeOf(context).height * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).lightGreenBGColor,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: 555.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Container(
              width: 390.0,
              height: 555.0,
              child: custom_widgets.OsmShowPolylines(
                width: 390.0,
                height: 555.0,
                currentLocation: widget.currentLocation!,
                riderLocation: widget.riderLocation!,
                polylineLatLngCoords: widget.polylineCoordinates!,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
            child: FFButtonWidget(
              onPressed: () async {
                Navigator.pop(context);
              },
              text: 'Dismiss',
              options: FFButtonOptions(
                width: MediaQuery.sizeOf(context).width * 0.9,
                height: 48.0,
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).blackButton,
                textStyle: FlutterFlowTheme.of(context).labelLarge.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.of(context).blackBGFontColor,
                      letterSpacing: 0.0,
                    ),
                elevation: 0.0,
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
