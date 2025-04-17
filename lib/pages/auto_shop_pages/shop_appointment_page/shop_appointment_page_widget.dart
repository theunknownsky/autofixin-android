import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/shop_bottom_navbar/shop_bottom_navbar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/auto_shop_pages/select_mechanic_pop_up/select_mechanic_pop_up_widget.dart';
import '/pages/auto_shop_pages/service_fee_pop_up/service_fee_pop_up_widget.dart';
import '/pages/auto_shop_pages/shop_appt_popup/shop_appt_popup_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'shop_appointment_page_model.dart';
export 'shop_appointment_page_model.dart';

class ShopAppointmentPageWidget extends StatefulWidget {
  const ShopAppointmentPageWidget({super.key});

  static String routeName = 'ShopAppointmentPage';
  static String routePath = '/shopAppointmentPage';

  @override
  State<ShopAppointmentPageWidget> createState() =>
      _ShopAppointmentPageWidgetState();
}

class _ShopAppointmentPageWidgetState extends State<ShopAppointmentPageWidget> {
  late ShopAppointmentPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShopAppointmentPageModel());
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
            'Appointments',
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
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 64.0),
                  child: AuthUserStreamWidget(
                    builder: (context) => Builder(
                      builder: (context) {
                        final appointments =
                            (currentUserDocument?.userAppointments.toList() ??
                                    [])
                                .toList();

                        return SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: List.generate(appointments.length,
                                (appointmentsIndex) {
                              final appointmentsItem =
                                  appointments[appointmentsIndex];
                              return Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Builder(
                                  builder: (context) => Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 0.0),
                                    child: StreamBuilder<AppointmentsRecord>(
                                      stream: AppointmentsRecord.getDocument(
                                          appointmentsItem),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }

                                        final containerAppointmentsRecord =
                                            snapshot.data!;

                                        return InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await showDialog(
                                              context: context,
                                              builder: (dialogContext) {
                                                return Dialog(
                                                  elevation: 0,
                                                  insetPadding: EdgeInsets.zero,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  alignment:
                                                      AlignmentDirectional(
                                                              0.0, 0.0)
                                                          .resolve(
                                                              Directionality.of(
                                                                  context)),
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      FocusScope.of(
                                                              dialogContext)
                                                          .unfocus();
                                                      FocusManager
                                                          .instance.primaryFocus
                                                          ?.unfocus();
                                                    },
                                                    child: Container(
                                                      height: 650.0,
                                                      child:
                                                          ShopApptPopupWidget(
                                                        appointment:
                                                            containerAppointmentsRecord,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.9,
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(20.0),
                                                bottomRight:
                                                    Radius.circular(20.0),
                                                topLeft: Radius.circular(20.0),
                                                topRight: Radius.circular(20.0),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      15.0, 15.0, 15.0, 15.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        () {
                                                          if (containerAppointmentsRecord
                                                                  .appointmentStatus ==
                                                              1) {
                                                            return 'Requested';
                                                          } else if (containerAppointmentsRecord
                                                                  .appointmentStatus ==
                                                              2) {
                                                            return 'Ongoing';
                                                          } else if (containerAppointmentsRecord
                                                                  .appointmentStatus ==
                                                              3) {
                                                            return 'To Pay';
                                                          } else if (containerAppointmentsRecord
                                                                  .appointmentStatus ==
                                                              4) {
                                                            return 'Confirm Payment';
                                                          } else if (containerAppointmentsRecord
                                                                  .appointmentStatus ==
                                                              5) {
                                                            return 'Finished';
                                                          } else {
                                                            return 'Declined';
                                                          }
                                                        }(),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .blackBGFontColor,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                      StreamBuilder<
                                                          UsersRecord>(
                                                        stream: UsersRecord.getDocument(
                                                            containerAppointmentsRecord
                                                                .appointmentRider!),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                              child: SizedBox(
                                                                width: 50.0,
                                                                height: 50.0,
                                                                child:
                                                                    CircularProgressIndicator(
                                                                  valueColor:
                                                                      AlwaysStoppedAnimation<
                                                                          Color>(
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          }

                                                          final textUsersRecord =
                                                              snapshot.data!;

                                                          return Text(
                                                            '${textUsersRecord.riderFirstName} ${textUsersRecord.riderLastName}',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Color(
                                                                      0xFF45DFB1),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                          );
                                                        },
                                                      ),
                                                      Text(
                                                        'Service Fee: Php ${containerAppointmentsRecord.appointmentServiceFee.toString()}',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Color(
                                                                      0xFF45DFB1),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                      ),
                                                      Text(
                                                        'Payment Mode: ${valueOrDefault<String>(
                                                          containerAppointmentsRecord
                                                              .appointmentTransactionMode,
                                                          'Pending',
                                                        )}',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Color(
                                                                      0xFF45DFB1),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                      ),
                                                      Text(
                                                        'Tap to see more details...',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 3.0)),
                                                  ),
                                                  Container(
                                                    width: 110.0,
                                                    decoration: BoxDecoration(),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Builder(
                                                          builder: (context) =>
                                                              FFButtonWidget(
                                                            onPressed:
                                                                (containerAppointmentsRecord
                                                                            .appointmentStatus ==
                                                                        2)
                                                                    ? null
                                                                    : () async {
                                                                        if (containerAppointmentsRecord.appointmentStatus ==
                                                                            1) {
                                                                          await showDialog(
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (dialogContext) {
                                                                              return Dialog(
                                                                                elevation: 0,
                                                                                insetPadding: EdgeInsets.zero,
                                                                                backgroundColor: Colors.transparent,
                                                                                alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                child: GestureDetector(
                                                                                  onTap: () {
                                                                                    FocusScope.of(dialogContext).unfocus();
                                                                                    FocusManager.instance.primaryFocus?.unfocus();
                                                                                  },
                                                                                  child: Container(
                                                                                    height: 370.0,
                                                                                    child: SelectMechanicPopUpWidget(
                                                                                      appointment: containerAppointmentsRecord,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            },
                                                                          );
                                                                        } else if (containerAppointmentsRecord.appointmentStatus ==
                                                                            3) {
                                                                          await showDialog(
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (dialogContext) {
                                                                              return Dialog(
                                                                                elevation: 0,
                                                                                insetPadding: EdgeInsets.zero,
                                                                                backgroundColor: Colors.transparent,
                                                                                alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                child: GestureDetector(
                                                                                  onTap: () {
                                                                                    FocusScope.of(dialogContext).unfocus();
                                                                                    FocusManager.instance.primaryFocus?.unfocus();
                                                                                  },
                                                                                  child: ServiceFeePopUpWidget(
                                                                                    appointment: containerAppointmentsRecord,
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            },
                                                                          );
                                                                        } else if (containerAppointmentsRecord.appointmentStatus ==
                                                                            4) {
                                                                          await appointmentsItem
                                                                              .update(createAppointmentsRecordData(
                                                                            appointmentStatus:
                                                                                5,
                                                                          ));

                                                                          var transactionsRecordReference = TransactionsRecord
                                                                              .collection
                                                                              .doc(containerAppointmentsRecord.reference.id);
                                                                          await transactionsRecordReference
                                                                              .set({
                                                                            ...createTransactionsRecordData(
                                                                              transactionServiceAvailed: containerAppointmentsRecord.appointmentServiceAvailed,
                                                                              transactionShop: containerAppointmentsRecord.appointmentShop,
                                                                              transactionServiceFee: containerAppointmentsRecord.appointmentServiceFee,
                                                                              transactionTimestamp: getCurrentTimestamp,
                                                                              transactionRider: containerAppointmentsRecord.appointmentRider,
                                                                              transactionMode: containerAppointmentsRecord.appointmentTransactionMode,
                                                                              transactionMechanic: containerAppointmentsRecord.appointmentMechanic,
                                                                            ),
                                                                            ...mapToFirestore(
                                                                              {
                                                                                'transaction_services': containerAppointmentsRecord.appointmentServices,
                                                                                'transaction_services_fees': containerAppointmentsRecord.appointmentServicesFeesList,
                                                                              },
                                                                            ),
                                                                          });
                                                                          _model.createdTransaction =
                                                                              TransactionsRecord.getDocumentFromData({
                                                                            ...createTransactionsRecordData(
                                                                              transactionServiceAvailed: containerAppointmentsRecord.appointmentServiceAvailed,
                                                                              transactionShop: containerAppointmentsRecord.appointmentShop,
                                                                              transactionServiceFee: containerAppointmentsRecord.appointmentServiceFee,
                                                                              transactionTimestamp: getCurrentTimestamp,
                                                                              transactionRider: containerAppointmentsRecord.appointmentRider,
                                                                              transactionMode: containerAppointmentsRecord.appointmentTransactionMode,
                                                                              transactionMechanic: containerAppointmentsRecord.appointmentMechanic,
                                                                            ),
                                                                            ...mapToFirestore(
                                                                              {
                                                                                'transaction_services': containerAppointmentsRecord.appointmentServices,
                                                                                'transaction_services_fees': containerAppointmentsRecord.appointmentServicesFeesList,
                                                                              },
                                                                            ),
                                                                          }, transactionsRecordReference);

                                                                          await currentUserReference!
                                                                              .update({
                                                                            ...mapToFirestore(
                                                                              {
                                                                                'user_transactions': FieldValue.arrayUnion([
                                                                                  _model.createdTransaction?.reference
                                                                                ]),
                                                                              },
                                                                            ),
                                                                          });

                                                                          await containerAppointmentsRecord
                                                                              .appointmentRider!
                                                                              .update({
                                                                            ...mapToFirestore(
                                                                              {
                                                                                'user_transactions': FieldValue.arrayUnion([
                                                                                  _model.createdTransaction?.reference
                                                                                ]),
                                                                              },
                                                                            ),
                                                                          });
                                                                          ScaffoldMessenger.of(context)
                                                                              .showSnackBar(
                                                                            SnackBar(
                                                                              content: Text(
                                                                                'Payment confirmed.',
                                                                                style: TextStyle(
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                ),
                                                                              ),
                                                                              duration: Duration(milliseconds: 4000),
                                                                              backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                            ),
                                                                          );
                                                                        } else if (containerAppointmentsRecord.appointmentStatus ==
                                                                            5) {
                                                                          await currentUserReference!
                                                                              .update({
                                                                            ...mapToFirestore(
                                                                              {
                                                                                'user_appointments': FieldValue.arrayRemove([
                                                                                  appointmentsItem
                                                                                ]),
                                                                              },
                                                                            ),
                                                                          });
                                                                          ScaffoldMessenger.of(context)
                                                                              .showSnackBar(
                                                                            SnackBar(
                                                                              content: Text(
                                                                                'Appointment finished.',
                                                                                style: TextStyle(
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                ),
                                                                              ),
                                                                              duration: Duration(milliseconds: 3000),
                                                                              backgroundColor: FlutterFlowTheme.of(context).primary,
                                                                            ),
                                                                          );

                                                                          context
                                                                              .pushNamed(ShopTransactionRecordPageWidget.routeName);
                                                                        }

                                                                        safeSetState(
                                                                            () {});
                                                                      },
                                                            text: () {
                                                              if (containerAppointmentsRecord
                                                                      .appointmentStatus ==
                                                                  1) {
                                                                return 'Accept';
                                                              } else if (containerAppointmentsRecord
                                                                      .appointmentStatus ==
                                                                  2) {
                                                                return 'Pending';
                                                              } else if (containerAppointmentsRecord
                                                                      .appointmentStatus ==
                                                                  3) {
                                                                return 'Proceed';
                                                              } else if (containerAppointmentsRecord
                                                                      .appointmentStatus ==
                                                                  4) {
                                                                return 'Confirm';
                                                              } else if (containerAppointmentsRecord
                                                                      .appointmentStatus ==
                                                                  5) {
                                                                return 'Finish';
                                                              } else {
                                                                return 'Disabled';
                                                              }
                                                            }(),
                                                            options:
                                                                FFButtonOptions(
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  1.0,
                                                              height: 40.0,
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              iconPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .blackBGFontColor,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                              elevation: 0.0,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              disabledColor:
                                                                  Color(
                                                                      0xFFC3FFF0),
                                                              disabledTextColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      4.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: FFButtonWidget(
                                                            onPressed: !((containerAppointmentsRecord
                                                                            .appointmentStatus ==
                                                                        1) ||
                                                                    (containerAppointmentsRecord
                                                                            .appointmentStatus ==
                                                                        0))
                                                                ? null
                                                                : () async {
                                                                    if (containerAppointmentsRecord
                                                                            .appointmentStatus ==
                                                                        1) {
                                                                      await containerAppointmentsRecord
                                                                          .reference
                                                                          .update(
                                                                              createAppointmentsRecordData(
                                                                        appointmentStatus:
                                                                            0,
                                                                      ));
                                                                      ScaffoldMessenger.of(
                                                                              context)
                                                                          .showSnackBar(
                                                                        SnackBar(
                                                                          content:
                                                                              Text(
                                                                            'Appointment declined.',
                                                                            style:
                                                                                TextStyle(
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                            ),
                                                                          ),
                                                                          duration:
                                                                              Duration(milliseconds: 4000),
                                                                          backgroundColor:
                                                                              FlutterFlowTheme.of(context).blackBGFontColor,
                                                                        ),
                                                                      );
                                                                    } else if (containerAppointmentsRecord
                                                                            .appointmentStatus ==
                                                                        0) {
                                                                      await currentUserReference!
                                                                          .update({
                                                                        ...mapToFirestore(
                                                                          {
                                                                            'user_appointments':
                                                                                FieldValue.arrayRemove([
                                                                              containerAppointmentsRecord.reference
                                                                            ]),
                                                                          },
                                                                        ),
                                                                      });
                                                                      ScaffoldMessenger.of(
                                                                              context)
                                                                          .showSnackBar(
                                                                        SnackBar(
                                                                          content:
                                                                              Text(
                                                                            'Appointment deleted.',
                                                                            style:
                                                                                TextStyle(
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                            ),
                                                                          ),
                                                                          duration:
                                                                              Duration(milliseconds: 4000),
                                                                          backgroundColor:
                                                                              FlutterFlowTheme.of(context).blackBGFontColor,
                                                                        ),
                                                                      );
                                                                    }
                                                                  },
                                                            text: () {
                                                              if (containerAppointmentsRecord
                                                                      .appointmentStatus ==
                                                                  1) {
                                                                return 'Decline';
                                                              } else if (containerAppointmentsRecord
                                                                      .appointmentStatus ==
                                                                  0) {
                                                                return 'Delete';
                                                              } else {
                                                                return 'Disabled';
                                                              }
                                                            }(),
                                                            options:
                                                                FFButtonOptions(
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  1.0,
                                                              height: 40.0,
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              iconPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                              elevation: 0.0,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              disabledColor:
                                                                  Color(
                                                                      0xFFFFB6BC),
                                                              disabledTextColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      4.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: FFButtonWidget(
                                                            onPressed: !((containerAppointmentsRecord
                                                                            .appointmentStatus ==
                                                                        1) ||
                                                                    (containerAppointmentsRecord
                                                                            .appointmentStatus ==
                                                                        2))
                                                                ? null
                                                                : () async {
                                                                    currentUserLocationValue = await getCurrentUserLocation(
                                                                        defaultLocation: LatLng(
                                                                            0.0,
                                                                            0.0));
                                                                    _model.curLocAction =
                                                                        await actions
                                                                            .getRawCoordinates(
                                                                      currentUserLocationValue!,
                                                                    );
                                                                    _model.riderLocAction =
                                                                        await actions
                                                                            .getRawCoordinates(
                                                                      containerAppointmentsRecord
                                                                          .appointmentLocation!,
                                                                    );
                                                                    _model.osrmApiAction =
                                                                        await OsrmApiCall
                                                                            .call(
                                                                      lat1: _model
                                                                          .curLocAction
                                                                          ?.elementAtOrNull(
                                                                              0),
                                                                      long1: _model
                                                                          .curLocAction
                                                                          ?.elementAtOrNull(
                                                                              1),
                                                                      lat2: _model
                                                                          .riderLocAction
                                                                          ?.elementAtOrNull(
                                                                              0),
                                                                      long2: _model
                                                                          .riderLocAction
                                                                          ?.elementAtOrNull(
                                                                              1),
                                                                    );

                                                                    if ((_model
                                                                            .osrmApiAction
                                                                            ?.succeeded ??
                                                                        true)) {
                                                                      _model.toPolyCoords =
                                                                          await actions
                                                                              .toLatLngCoordList(
                                                                        OsrmApiCall.osrmCoords(
                                                                          (_model.osrmApiAction?.jsonBody ??
                                                                              ''),
                                                                        )!
                                                                            .toList(),
                                                                      );

                                                                      context
                                                                          .pushNamed(
                                                                        ShopRouteToRiderLocationWidget
                                                                            .routeName,
                                                                        queryParameters:
                                                                            {
                                                                          'currentLocation':
                                                                              serializeParam(
                                                                            currentUserLocationValue,
                                                                            ParamType.LatLng,
                                                                          ),
                                                                          'riderLocation':
                                                                              serializeParam(
                                                                            containerAppointmentsRecord.appointmentLocation,
                                                                            ParamType.LatLng,
                                                                          ),
                                                                          'polylineCoordinates':
                                                                              serializeParam(
                                                                            _model.toPolyCoords,
                                                                            ParamType.LatLng,
                                                                            isList:
                                                                                true,
                                                                          ),
                                                                        }.withoutNulls,
                                                                      );
                                                                    }

                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                            text: 'Location',
                                                            options:
                                                                FFButtonOptions(
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  1.0,
                                                              height: 40.0,
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              iconPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondary,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                              elevation: 0.0,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              disabledColor:
                                                                  Color(
                                                                      0xFF7C6FED),
                                                              disabledTextColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              );
                            }),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: wrapWithModel(
                    model: _model.shopBottomNavbarModel,
                    updateCallback: () => safeSetState(() {}),
                    child: ShopBottomNavbarWidget(
                      currentActiveNav: 2,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
