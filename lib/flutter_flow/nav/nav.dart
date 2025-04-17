import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/base_auth_user_provider.dart';

import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? RoutingPageWidget() : LandingPageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? RoutingPageWidget()
              : LandingPageWidget(),
        ),
        FFRoute(
          name: LandingPageWidget.routeName,
          path: LandingPageWidget.routePath,
          builder: (context, params) => LandingPageWidget(),
        ),
        FFRoute(
          name: SignUpPageWidget.routeName,
          path: SignUpPageWidget.routePath,
          builder: (context, params) => SignUpPageWidget(),
        ),
        FFRoute(
          name: RiderSignupPageWidget.routeName,
          path: RiderSignupPageWidget.routePath,
          builder: (context, params) => RiderSignupPageWidget(),
        ),
        FFRoute(
          name: RiderSignupPwordPageWidget.routeName,
          path: RiderSignupPwordPageWidget.routePath,
          builder: (context, params) => RiderSignupPwordPageWidget(
            firstName: params.getParam(
              'firstName',
              ParamType.String,
            ),
            lastName: params.getParam(
              'lastName',
              ParamType.String,
            ),
            mobileNumber: params.getParam(
              'mobileNumber',
              ParamType.String,
            ),
            driverLicenseID: params.getParam(
              'driverLicenseID',
              ParamType.String,
            ),
            email: params.getParam(
              'email',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: RiderSignupVerificationPageWidget.routeName,
          path: RiderSignupVerificationPageWidget.routePath,
          builder: (context, params) => RiderSignupVerificationPageWidget(
            firstName: params.getParam(
              'firstName',
              ParamType.String,
            ),
            lastName: params.getParam(
              'lastName',
              ParamType.String,
            ),
            email: params.getParam(
              'email',
              ParamType.String,
            ),
            mobileNumber: params.getParam(
              'mobileNumber',
              ParamType.String,
            ),
            driverLicenseId: params.getParam(
              'driverLicenseId',
              ParamType.String,
            ),
            password: params.getParam(
              'password',
              ParamType.String,
            ),
            confirmPassword: params.getParam(
              'confirmPassword',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: RiderMapViewPageWidget.routeName,
          path: RiderMapViewPageWidget.routePath,
          builder: (context, params) => RiderMapViewPageWidget(),
        ),
        FFRoute(
          name: RiderVehiclesPageWidget.routeName,
          path: RiderVehiclesPageWidget.routePath,
          builder: (context, params) => RiderVehiclesPageWidget(),
        ),
        FFRoute(
          name: RiderChatWithShopPageWidget.routeName,
          path: RiderChatWithShopPageWidget.routePath,
          asyncParams: {
            'chatShop': getDoc(['chats'], ChatsRecord.fromSnapshot),
          },
          builder: (context, params) => RiderChatWithShopPageWidget(
            chatShop: params.getParam(
              'chatShop',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: RiderAccountPageWidget.routeName,
          path: RiderAccountPageWidget.routePath,
          builder: (context, params) => RiderAccountPageWidget(),
        ),
        FFRoute(
          name: ShopSignupPageWidget.routeName,
          path: ShopSignupPageWidget.routePath,
          builder: (context, params) => ShopSignupPageWidget(),
        ),
        FFRoute(
          name: RoutingPageWidget.routeName,
          path: RoutingPageWidget.routePath,
          builder: (context, params) => RoutingPageWidget(),
        ),
        FFRoute(
          name: ShopSignupPage2Widget.routeName,
          path: ShopSignupPage2Widget.routePath,
          builder: (context, params) => ShopSignupPage2Widget(
            shopName: params.getParam(
              'shopName',
              ParamType.String,
            ),
            shopEmail: params.getParam(
              'shopEmail',
              ParamType.String,
            ),
            openingHour: params.getParam(
              'openingHour',
              ParamType.DateTime,
            ),
            closingHour: params.getParam(
              'closingHour',
              ParamType.DateTime,
            ),
            towingAvailability: params.getParam(
              'towingAvailability',
              ParamType.bool,
            ),
          ),
        ),
        FFRoute(
          name: ShopSignupPage3Widget.routeName,
          path: ShopSignupPage3Widget.routePath,
          builder: (context, params) => ShopSignupPage3Widget(
            shopName: params.getParam(
              'shopName',
              ParamType.String,
            ),
            shopEmail: params.getParam(
              'shopEmail',
              ParamType.String,
            ),
            openingHour: params.getParam(
              'openingHour',
              ParamType.DateTime,
            ),
            closingHour: params.getParam(
              'closingHour',
              ParamType.DateTime,
            ),
            towingAvailability: params.getParam(
              'towingAvailability',
              ParamType.bool,
            ),
            businessPermitNumber: params.getParam(
              'businessPermitNumber',
              ParamType.String,
            ),
            services: params.getParam<String>(
              'services',
              ParamType.String,
              isList: true,
            ),
          ),
        ),
        FFRoute(
          name: ShopDashboardPageWidget.routeName,
          path: ShopDashboardPageWidget.routePath,
          builder: (context, params) => ShopDashboardPageWidget(),
        ),
        FFRoute(
          name: ShopSignupPage4Widget.routeName,
          path: ShopSignupPage4Widget.routePath,
          builder: (context, params) => ShopSignupPage4Widget(
            shopName: params.getParam(
              'shopName',
              ParamType.String,
            ),
            shopEmail: params.getParam(
              'shopEmail',
              ParamType.String,
            ),
            openingHour: params.getParam(
              'openingHour',
              ParamType.DateTime,
            ),
            closingHour: params.getParam(
              'closingHour',
              ParamType.DateTime,
            ),
            towingAvailability: params.getParam(
              'towingAvailability',
              ParamType.bool,
            ),
            businessPermitNumber: params.getParam(
              'businessPermitNumber',
              ParamType.String,
            ),
            services: params.getParam<String>(
              'services',
              ParamType.String,
              isList: true,
            ),
            password: params.getParam(
              'password',
              ParamType.String,
            ),
            confirmPassword: params.getParam(
              'confirmPassword',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: LoginPageWidget.routeName,
          path: LoginPageWidget.routePath,
          builder: (context, params) => LoginPageWidget(),
        ),
        FFRoute(
          name: RiderChatHistoryPageWidget.routeName,
          path: RiderChatHistoryPageWidget.routePath,
          builder: (context, params) => RiderChatHistoryPageWidget(),
        ),
        FFRoute(
          name: RiderTransactionRecordPageWidget.routeName,
          path: RiderTransactionRecordPageWidget.routePath,
          builder: (context, params) => RiderTransactionRecordPageWidget(),
        ),
        FFRoute(
          name: RiderAppointmentSheet2Widget.routeName,
          path: RiderAppointmentSheet2Widget.routePath,
          asyncParams: {
            'vehicle': getDoc(['vehicles'], VehiclesRecord.fromSnapshot),
            'shop': getDoc(['users'], UsersRecord.fromSnapshot),
          },
          builder: (context, params) => RiderAppointmentSheet2Widget(
            vehicle: params.getParam(
              'vehicle',
              ParamType.Document,
            ),
            shop: params.getParam(
              'shop',
              ParamType.Document,
            ),
            shopId: params.getParam(
              'shopId',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users'],
            ),
          ),
        ),
        FFRoute(
          name: ShopAccountPageWidget.routeName,
          path: ShopAccountPageWidget.routePath,
          builder: (context, params) => ShopAccountPageWidget(),
        ),
        FFRoute(
          name: SignupWidget.routeName,
          path: SignupWidget.routePath,
          builder: (context, params) => SignupWidget(),
        ),
        FFRoute(
          name: ShopAppointmentPageWidget.routeName,
          path: ShopAppointmentPageWidget.routePath,
          builder: (context, params) => ShopAppointmentPageWidget(),
        ),
        FFRoute(
          name: ShopChatHistoryPageWidget.routeName,
          path: ShopChatHistoryPageWidget.routePath,
          builder: (context, params) => ShopChatHistoryPageWidget(),
        ),
        FFRoute(
          name: ShopChatWithRiderPageWidget.routeName,
          path: ShopChatWithRiderPageWidget.routePath,
          asyncParams: {
            'chat': getDoc(['chats'], ChatsRecord.fromSnapshot),
          },
          builder: (context, params) => ShopChatWithRiderPageWidget(
            chat: params.getParam(
              'chat',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: ShopTransactionRecordPageWidget.routeName,
          path: ShopTransactionRecordPageWidget.routePath,
          builder: (context, params) => ShopTransactionRecordPageWidget(),
        ),
        FFRoute(
          name: RiderAppointmentSheet1Widget.routeName,
          path: RiderAppointmentSheet1Widget.routePath,
          asyncParams: {
            'shop': getDoc(['users'], UsersRecord.fromSnapshot),
          },
          builder: (context, params) => RiderAppointmentSheet1Widget(
            shopId: params.getParam(
              'shopId',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users'],
            ),
            shop: params.getParam(
              'shop',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: RiderAppointmentPageWidget.routeName,
          path: RiderAppointmentPageWidget.routePath,
          builder: (context, params) => RiderAppointmentPageWidget(),
        ),
        FFRoute(
          name: RiderVehiclesPageCopyWidget.routeName,
          path: RiderVehiclesPageCopyWidget.routePath,
          builder: (context, params) => RiderVehiclesPageCopyWidget(),
        ),
        FFRoute(
          name: ChatPageWidget.routeName,
          path: ChatPageWidget.routePath,
          builder: (context, params) => ChatPageWidget(
            chats: params.getParam(
              'chats',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['chats'],
            ),
          ),
        ),
        FFRoute(
          name: RiderMapShopViewPageWidget.routeName,
          path: RiderMapShopViewPageWidget.routePath,
          asyncParams: {
            'shopList': getDocList(['users'], UsersRecord.fromSnapshot),
          },
          builder: (context, params) => RiderMapShopViewPageWidget(
            shopList: params.getParam<UsersRecord>(
              'shopList',
              ParamType.Document,
              isList: true,
            ),
            currentLocation: params.getParam(
              'currentLocation',
              ParamType.LatLng,
            ),
          ),
        ),
        FFRoute(
          name: ShopRouteToRiderLocationWidget.routeName,
          path: ShopRouteToRiderLocationWidget.routePath,
          builder: (context, params) => ShopRouteToRiderLocationWidget(
            currentLocation: params.getParam(
              'currentLocation',
              ParamType.LatLng,
            ),
            riderLocation: params.getParam(
              'riderLocation',
              ParamType.LatLng,
            ),
            polylineCoordinates: params.getParam<LatLng>(
              'polylineCoordinates',
              ParamType.LatLng,
              isList: true,
            ),
          ),
        ),
        FFRoute(
          name: ChatListWidget.routeName,
          path: ChatListWidget.routePath,
          builder: (context, params) => ChatListWidget(),
        ),
        FFRoute(
          name: GcashPaymentPageWidget.routeName,
          path: GcashPaymentPageWidget.routePath,
          asyncParams: {
            'appointment':
                getDoc(['appointments'], AppointmentsRecord.fromSnapshot),
            'shopDetails': getDoc(['users'], UsersRecord.fromSnapshot),
          },
          builder: (context, params) => GcashPaymentPageWidget(
            appointment: params.getParam(
              'appointment',
              ParamType.Document,
            ),
            shopDetails: params.getParam(
              'shopDetails',
              ParamType.Document,
            ),
          ),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/landingPage';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/images/vnimc_1.png',
                    fit: BoxFit.cover,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
