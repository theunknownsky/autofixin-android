import '/backend/backend.dart';
import '/components/rider_bottom_navbar/rider_bottom_navbar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'rider_map_shop_view_page_model.dart';
export 'rider_map_shop_view_page_model.dart';

class RiderMapShopViewPageWidget extends StatefulWidget {
  const RiderMapShopViewPageWidget({
    super.key,
    this.shopList,
    required this.currentLocation,
  });

  final List<UsersRecord>? shopList;
  final LatLng? currentLocation;

  static String routeName = 'RiderMapShopViewPage';
  static String routePath = '/riderMapShopViewPage';

  @override
  State<RiderMapShopViewPageWidget> createState() =>
      _RiderMapShopViewPageWidgetState();
}

class _RiderMapShopViewPageWidgetState
    extends State<RiderMapShopViewPageWidget> {
  late RiderMapShopViewPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RiderMapShopViewPageModel());
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
            'Nearby Shops',
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
          child: Stack(
            children: [
              Container(
                width: 390.0,
                height: 710.0,
                child: custom_widgets.OsmDisplayShops(
                  width: 390.0,
                  height: 710.0,
                  currentLocation: widget!.currentLocation,
                  shopList: widget!.shopList!,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: wrapWithModel(
                  model: _model.riderBottomNavbarModel,
                  updateCallback: () => safeSetState(() {}),
                  child: RiderBottomNavbarWidget(
                    currentActiveNav: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
