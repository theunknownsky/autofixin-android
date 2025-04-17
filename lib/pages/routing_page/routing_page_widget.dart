import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'routing_page_model.dart';
export 'routing_page_model.dart';

class RoutingPageWidget extends StatefulWidget {
  const RoutingPageWidget({super.key});

  static String routeName = 'RoutingPage';
  static String routePath = '/routingPage';

  @override
  State<RoutingPageWidget> createState() => _RoutingPageWidgetState();
}

class _RoutingPageWidgetState extends State<RoutingPageWidget> {
  late RoutingPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RoutingPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (loggedIn == true) {
        await Future.delayed(const Duration(milliseconds: 1000));
        if (valueOrDefault(currentUserDocument?.userType, 0) == 1) {
          context.pushNamed(RiderMapViewPageWidget.routeName);
        } else if (valueOrDefault(currentUserDocument?.userType, 0) == 2) {
          context.pushNamed(ShopDashboardPageWidget.routeName);
        } else {
          return;
        }
      } else {
        await Future.delayed(const Duration(milliseconds: 2000));

        context.pushNamed(LoginPageWidget.routeName);
      }
    });
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
          title: Text(
            ' Loading...',
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
            children: [],
          ),
        ),
      ),
    );
  }
}
