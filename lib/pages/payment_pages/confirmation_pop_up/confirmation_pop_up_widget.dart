import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'confirmation_pop_up_model.dart';
export 'confirmation_pop_up_model.dart';

class ConfirmationPopUpWidget extends StatefulWidget {
  const ConfirmationPopUpWidget({
    super.key,
    required this.appointment,
    required this.shop,
  });

  final AppointmentsRecord? appointment;
  final UsersRecord? shop;

  @override
  State<ConfirmationPopUpWidget> createState() =>
      _ConfirmationPopUpWidgetState();
}

class _ConfirmationPopUpWidgetState extends State<ConfirmationPopUpWidget> {
  late ConfirmationPopUpModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConfirmationPopUpModel());
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
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Align(
            alignment: AlignmentDirectional(1.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 22.0, 22.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.close,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24.0,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 0.0),
            child: Text(
              'You are about to pay to',
              style: FlutterFlowTheme.of(context).headlineSmall.override(
                    font: GoogleFonts.poppins(
                      fontWeight:
                          FlutterFlowTheme.of(context).headlineSmall.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                    ),
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineSmall.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
            child: Text(
              valueOrDefault<String>(
                widget.shop?.shopName,
                'Fetching shop name...',
              ),
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    font: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                    ),
                    fontSize: 25.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w600,
                    fontStyle: FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
            child: Text(
              valueOrDefault<String>(
                widget.shop?.shopContactNumber,
                'Fetching shop number...',
              ),
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    font: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                    ),
                    fontSize: 25.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w600,
                    fontStyle: FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FFButtonWidget(
                  onPressed: () async {
                    Navigator.pop(context);
                  },
                  text: 'No, Cancel',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).hintFontColor,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          font: GoogleFonts.poppins(
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).primaryText,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .titleSmall
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    await widget.appointment!.reference
                        .update(createAppointmentsRecordData(
                      appointmentTransactionMode: 'GCash',
                      appointmentStatus: 5,
                    ));

                    var transactionsRecordReference = TransactionsRecord
                        .collection
                        .doc(widget.appointment!.reference.id);
                    await transactionsRecordReference.set({
                      ...createTransactionsRecordData(
                        transactionServiceAvailed:
                            widget.appointment?.appointmentServiceAvailed,
                        transactionShop: widget.appointment?.appointmentShop,
                        transactionServiceFee:
                            widget.appointment?.appointmentServiceFee,
                        transactionTimestamp: getCurrentTimestamp,
                        transactionRider: widget.appointment?.appointmentRider,
                        transactionMode:
                            widget.appointment?.appointmentTransactionMode,
                        transactionMechanic:
                            widget.appointment?.appointmentMechanic,
                      ),
                      ...mapToFirestore(
                        {
                          'transaction_services':
                              widget.appointment?.appointmentServices,
                          'transaction_services_fees':
                              widget.appointment?.appointmentServicesFeesList,
                        },
                      ),
                    });
                    _model.createdTransaction =
                        TransactionsRecord.getDocumentFromData({
                      ...createTransactionsRecordData(
                        transactionServiceAvailed:
                            widget.appointment?.appointmentServiceAvailed,
                        transactionShop: widget.appointment?.appointmentShop,
                        transactionServiceFee:
                            widget.appointment?.appointmentServiceFee,
                        transactionTimestamp: getCurrentTimestamp,
                        transactionRider: widget.appointment?.appointmentRider,
                        transactionMode:
                            widget.appointment?.appointmentTransactionMode,
                        transactionMechanic:
                            widget.appointment?.appointmentMechanic,
                      ),
                      ...mapToFirestore(
                        {
                          'transaction_services':
                              widget.appointment?.appointmentServices,
                          'transaction_services_fees':
                              widget.appointment?.appointmentServicesFeesList,
                        },
                      ),
                    }, transactionsRecordReference);

                    await widget.appointment!.appointmentShop!.update({
                      ...mapToFirestore(
                        {
                          'user_transactions': FieldValue.arrayUnion(
                              [_model.createdTransaction?.reference]),
                        },
                      ),
                    });

                    await widget.appointment!.appointmentRider!.update({
                      ...mapToFirestore(
                        {
                          'user_transactions': FieldValue.arrayUnion(
                              [_model.createdTransaction?.reference]),
                        },
                      ),
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
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
                    Navigator.pop(context);

                    context.pushNamed(RiderAppointmentPageWidget.routeName);

                    safeSetState(() {});
                  },
                  text: 'Confirm',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0xFF1959E7),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          font: GoogleFonts.poppins(
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                          ),
                          color: Colors.white,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .titleSmall
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
