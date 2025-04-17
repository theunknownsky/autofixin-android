import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'service_fee_pop_up_model.dart';
export 'service_fee_pop_up_model.dart';

class ServiceFeePopUpWidget extends StatefulWidget {
  const ServiceFeePopUpWidget({
    super.key,
    required this.appointment,
  });

  final AppointmentsRecord? appointment;

  @override
  State<ServiceFeePopUpWidget> createState() => _ServiceFeePopUpWidgetState();
}

class _ServiceFeePopUpWidgetState extends State<ServiceFeePopUpWidget> {
  late ServiceFeePopUpModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ServiceFeePopUpModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.totalServiceFee = widget.appointment!.appointmentServiceFee;
      safeSetState(() {});
    });

    _model.serviceFeeFieldTextController ??= TextEditingController(
        text: widget.appointment?.appointmentServiceFee.toString());
    _model.serviceFeeFieldFocusNode ??= FocusNode();

    _model.addServiceFieldTextController ??= TextEditingController();
    _model.addServiceFieldFocusNode ??= FocusNode();

    _model.servicePriceToAddTextController ??= TextEditingController();
    _model.servicePriceToAddFocusNode ??= FocusNode();
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
          Form(
            key: _model.formKey,
            autovalidateMode: AutovalidateMode.disabled,
            child: Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(22.0, 13.0, 22.0, 55.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: Text(
                            'Enter Service Fee',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Text(
                                'Base Service Fee (${widget.appointment?.appointmentServiceAvailed})',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Php',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.8,
                                    child: TextFormField(
                                      controller:
                                          _model.serviceFeeFieldTextController,
                                      focusNode:
                                          _model.serviceFeeFieldFocusNode,
                                      autofocus: false,
                                      readOnly: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              letterSpacing: 0.0,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .hintFontColor,
                                              letterSpacing: 0.0,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .formBorderColor,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .greenButton,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                16.0, 16.0, 16.0, 16.0),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            letterSpacing: 0.0,
                                          ),
                                      textAlign: TextAlign.start,
                                      cursorColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      validator: _model
                                          .serviceFeeFieldTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Text(
                                'Additional Services',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              child: TextFormField(
                                controller:
                                    _model.addServiceFieldTextController,
                                focusNode: _model.addServiceFieldFocusNode,
                                autofocus: false,
                                obscureText: false,
                                decoration: InputDecoration(
                                  isDense: true,
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        letterSpacing: 0.0,
                                      ),
                                  hintText: 'Additional Service',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .hintFontColor,
                                        letterSpacing: 0.0,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .formBorderColor,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .greenButton,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          16.0, 16.0, 16.0, 16.0),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      letterSpacing: 0.0,
                                    ),
                                textAlign: TextAlign.start,
                                cursorColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                validator: _model
                                    .addServiceFieldTextControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 8.0, 0.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        child: TextFormField(
                                          controller: _model
                                              .servicePriceToAddTextController,
                                          focusNode:
                                              _model.servicePriceToAddFocusNode,
                                          autofocus: false,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            isDense: true,
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintText: 'Price in Php',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .hintFontColor,
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .formBorderColor,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .greenButton,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryBackground,
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 16.0, 16.0, 16.0),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                letterSpacing: 0.0,
                                              ),
                                          textAlign: TextAlign.start,
                                          cursorColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          validator: _model
                                              .servicePriceToAddTextControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () async {
                                      if ((_model.addServiceFieldTextController
                                                      .text !=
                                                  '') &&
                                          (_model.servicePriceToAddTextController
                                                      .text !=
                                                  '')) {
                                        if (!_model.additionalServices.contains(
                                            _model.addServiceFieldTextController
                                                .text)) {
                                          _model.addToAdditionalServices(_model
                                              .addServiceFieldTextController
                                              .text);
                                          _model.addToAdditionalServicesFees(
                                              int.parse(_model
                                                  .servicePriceToAddTextController
                                                  .text));
                                          _model.totalServiceFee = _model
                                                  .totalServiceFee +
                                              int.parse(_model
                                                  .servicePriceToAddTextController
                                                  .text);
                                          safeSetState(() {});
                                          safeSetState(() {
                                            _model.addServiceFieldTextController
                                                ?.clear();
                                            _model
                                                .servicePriceToAddTextController
                                                ?.clear();
                                          });
                                        } else {
                                          ScaffoldMessenger.of(context)
                                              .clearSnackBars();
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'Service already exists.',
                                                style: GoogleFonts.getFont(
                                                  'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .blackBGFontColor,
                                                ),
                                              ),
                                              duration:
                                                  Duration(milliseconds: 4000),
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .blackButton,
                                            ),
                                          );
                                        }
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .clearSnackBars();
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'Type the service you want to add.',
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .blackBGFontColor,
                                              ),
                                            ),
                                            duration:
                                                Duration(milliseconds: 4000),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .blackButton,
                                          ),
                                        );
                                      }
                                    },
                                    text: 'Add',
                                    options: FFButtonOptions(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.2,
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .greenBGFontColor,
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  borderRadius: BorderRadius.circular(8.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .formBorderColor,
                                    width: 2.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 5.0, 5.0, 5.0),
                                  child: Builder(
                                    builder: (context) {
                                      final servicesToSave =
                                          _model.additionalServices.toList();

                                      return SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: List.generate(
                                              servicesToSave.length,
                                              (servicesToSaveIndex) {
                                            final servicesToSaveItem =
                                                servicesToSave[
                                                    servicesToSaveIndex];
                                            return InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onDoubleTap: () async {
                                                _model.totalServiceFee = _model
                                                        .totalServiceFee +
                                                    functions.getNegativeNum(_model
                                                        .additionalServicesFees
                                                        .elementAtOrNull(
                                                            servicesToSaveIndex)!);
                                                _model
                                                    .removeFromAdditionalServices(
                                                        servicesToSaveItem);
                                                _model
                                                    .removeAtIndexFromAdditionalServicesFees(
                                                        servicesToSaveIndex);
                                                safeSetState(() {});
                                              },
                                              child: FFButtonWidget(
                                                onPressed: () {
                                                  print('Button pressed ...');
                                                },
                                                text: servicesToSaveItem,
                                                icon: Icon(
                                                  Icons.close,
                                                  size: 15.0,
                                                ),
                                                options: FFButtonOptions(
                                                  height: 40.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 0.0, 16.0, 0.0),
                                                  iconAlignment:
                                                      IconAlignment.end,
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .blackButton,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .blackBGFontColor,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  elevation: 0.0,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                            );
                                          }).divide(SizedBox(width: 5.0)),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Total Fee: ',
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  Text(
                                    _model.totalServiceFee.toString(),
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            if (_model.formKey.currentState == null ||
                                !_model.formKey.currentState!.validate()) {
                              return;
                            }
                            _model.insertAtIndexInAdditionalServices(0,
                                widget.appointment!.appointmentServiceAvailed);
                            _model.insertAtIndexInAdditionalServicesFees(
                                0, widget.appointment!.appointmentServiceFee);
                            safeSetState(() {});

                            await widget.appointment!.reference.update({
                              ...createAppointmentsRecordData(
                                appointmentServiceFee: _model.totalServiceFee,
                                appointmentStatus: 4,
                              ),
                              ...mapToFirestore(
                                {
                                  'appointment_services':
                                      _model.additionalServices,
                                  'appointment_services_fees_list':
                                      _model.additionalServicesFees,
                                },
                              ),
                            });
                            Navigator.pop(context);
                          },
                          text: 'Proceed',
                          options: FFButtonOptions(
                            width: MediaQuery.sizeOf(context).width * 0.9,
                            height: 48.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 16.0, 16.0, 16.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).greenButton,
                            textStyle: FlutterFlowTheme.of(context)
                                .labelLarge
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context)
                                      .greenBGFontColor,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                      ].divide(SizedBox(height: 30.0)),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
