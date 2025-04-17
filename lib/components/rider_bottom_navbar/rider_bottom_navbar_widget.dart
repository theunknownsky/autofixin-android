import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'rider_bottom_navbar_model.dart';
export 'rider_bottom_navbar_model.dart';

class RiderBottomNavbarWidget extends StatefulWidget {
  const RiderBottomNavbarWidget({
    super.key,
    required this.currentActiveNav,
  });

  final int? currentActiveNav;

  @override
  State<RiderBottomNavbarWidget> createState() =>
      _RiderBottomNavbarWidgetState();
}

class _RiderBottomNavbarWidgetState extends State<RiderBottomNavbarWidget> {
  late RiderBottomNavbarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RiderBottomNavbarModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (widget.currentActiveNav == 1) {
        _model.mapColor = FlutterFlowTheme.of(context).primary;
        _model.vehicleColor = FlutterFlowTheme.of(context).secondaryText;
        _model.chatColor = FlutterFlowTheme.of(context).secondaryText;
        _model.accountColor = FlutterFlowTheme.of(context).secondaryText;
        safeSetState(() {});
      } else if (widget.currentActiveNav == 2) {
        _model.mapColor = FlutterFlowTheme.of(context).secondaryText;
        _model.vehicleColor = FlutterFlowTheme.of(context).primary;
        _model.chatColor = FlutterFlowTheme.of(context).secondaryText;
        _model.accountColor = FlutterFlowTheme.of(context).secondaryText;
        safeSetState(() {});
      } else if (widget.currentActiveNav == 3) {
        _model.mapColor = FlutterFlowTheme.of(context).secondaryText;
        _model.vehicleColor = FlutterFlowTheme.of(context).secondaryText;
        _model.chatColor = FlutterFlowTheme.of(context).primary;
        _model.accountColor = FlutterFlowTheme.of(context).secondaryText;
        safeSetState(() {});
      } else if (widget.currentActiveNav == 4) {
        _model.mapColor = FlutterFlowTheme.of(context).secondaryText;
        _model.vehicleColor = FlutterFlowTheme.of(context).secondaryText;
        _model.chatColor = FlutterFlowTheme.of(context).secondaryText;
        _model.accountColor = FlutterFlowTheme.of(context).primary;
        safeSetState(() {});
      }
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 64.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: [
          BoxShadow(
            blurRadius: 5.0,
            color: Color(0x411D2429),
            offset: Offset(
              0.0,
              -2.0,
            ),
            spreadRadius: 0.0,
          )
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width * 0.25,
            decoration: BoxDecoration(),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed(RiderMapViewPageWidget.routeName);
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(
                    FontAwesomeIcons.mapMarkedAlt,
                    color: _model.mapColor,
                    size: 24.0,
                  ),
                  Text(
                    'Map',
                    style: FlutterFlowTheme.of(context).labelSmall.override(
                          fontFamily: 'Poppins',
                          color: _model.mapColor,
                          letterSpacing: 0.0,
                        ),
                  ),
                ].divide(SizedBox(height: 4.0)),
              ),
            ),
          ),
          Container(
            width: MediaQuery.sizeOf(context).width * 0.25,
            decoration: BoxDecoration(),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed(RiderVehiclesPageCopyWidget.routeName);
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(
                    FontAwesomeIcons.carSide,
                    color: _model.vehicleColor,
                    size: 24.0,
                  ),
                  Text(
                    'Vehicle',
                    style: FlutterFlowTheme.of(context).labelSmall.override(
                          fontFamily: 'Poppins',
                          color: _model.vehicleColor,
                          letterSpacing: 0.0,
                        ),
                  ),
                ].divide(SizedBox(height: 4.0)),
              ),
            ),
          ),
          Container(
            width: MediaQuery.sizeOf(context).width * 0.25,
            decoration: BoxDecoration(),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed(RiderChatHistoryPageWidget.routeName);
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.chat_bubble,
                    color: _model.chatColor,
                    size: 24.0,
                  ),
                  Text(
                    'Chat',
                    style: FlutterFlowTheme.of(context).labelSmall.override(
                          fontFamily: 'Poppins',
                          color: _model.chatColor,
                          letterSpacing: 0.0,
                        ),
                  ),
                ].divide(SizedBox(height: 4.0)),
              ),
            ),
          ),
          Container(
            width: MediaQuery.sizeOf(context).width * 0.25,
            decoration: BoxDecoration(),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed(RiderAccountPageWidget.routeName);
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.account_circle,
                    color: _model.accountColor,
                    size: 24.0,
                  ),
                  Text(
                    'Account',
                    style: FlutterFlowTheme.of(context).labelSmall.override(
                          fontFamily: 'Poppins',
                          color: _model.accountColor,
                          letterSpacing: 0.0,
                        ),
                  ),
                ].divide(SizedBox(height: 4.0)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
