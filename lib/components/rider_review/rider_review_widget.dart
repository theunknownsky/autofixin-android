import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'rider_review_model.dart';
export 'rider_review_model.dart';

class RiderReviewWidget extends StatefulWidget {
  const RiderReviewWidget({
    super.key,
    required this.shop,
  });

  final DocumentReference? shop;

  @override
  State<RiderReviewWidget> createState() => _RiderReviewWidgetState();
}

class _RiderReviewWidgetState extends State<RiderReviewWidget> {
  late RiderReviewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RiderReviewModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: 630.0,
        decoration: BoxDecoration(
          color: Colors.white,
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
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(22.0, 13.0, 22.0, 55.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, -1.0),
                            child: Text(
                              'Review',
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
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            child: RatingBar.builder(
                              onRatingUpdate: (newValue) {
                                safeSetState(
                                    () => _model.ratingBarValue = newValue);
                                _model.rating = _model.ratingBarValue?.round();
                                safeSetState(() {});
                              },
                              itemBuilder: (context, index) => Icon(
                                Icons.star_rounded,
                                color: FlutterFlowTheme.of(context).primary,
                              ),
                              direction: Axis.horizontal,
                              initialRating: _model.ratingBarValue ??= 3.0,
                              unratedColor:
                                  FlutterFlowTheme.of(context).accent1,
                              itemCount: 5,
                              itemSize: 60.0,
                              glowColor: FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width * 0.85,
                            child: TextFormField(
                              controller: _model.textController,
                              focusNode: _model.textFieldFocusNode,
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
                                hintText: 'Write a review for the shop...',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFD9D9D9),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                filled: true,
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                              maxLines: 5,
                              cursorColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              validator: _model.textControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              if (_model.textController.text != null &&
                                  _model.textController.text != '') {
                                var reviewsRecordReference1 =
                                    ReviewsRecord.collection.doc();
                                await reviewsRecordReference1
                                    .set(createReviewsRecordData(
                                  shop: widget!.shop,
                                  rider: currentUserReference,
                                  rating: _model.rating,
                                  comment: _model.textController.text,
                                ));
                                _model.reviewCreated =
                                    ReviewsRecord.getDocumentFromData(
                                        createReviewsRecordData(
                                          shop: widget!.shop,
                                          rider: currentUserReference,
                                          rating: _model.rating,
                                          comment: _model.textController.text,
                                        ),
                                        reviewsRecordReference1);

                                await widget!.shop!.update({
                                  ...mapToFirestore(
                                    {
                                      'shop_reviews': FieldValue.arrayUnion(
                                          [_model.reviewCreated?.reference]),
                                      'shop_stars': FieldValue.increment(
                                          _model.ratingBarValue!.round()),
                                    },
                                  ),
                                });
                                Navigator.pop(context);
                              } else {
                                var reviewsRecordReference2 =
                                    ReviewsRecord.collection.doc();
                                await reviewsRecordReference2
                                    .set(createReviewsRecordData(
                                  shop: widget!.shop,
                                  rider: currentUserReference,
                                  rating: _model.rating,
                                  comment: 'No comment.',
                                ));
                                _model.reviewCreated1 =
                                    ReviewsRecord.getDocumentFromData(
                                        createReviewsRecordData(
                                          shop: widget!.shop,
                                          rider: currentUserReference,
                                          rating: _model.rating,
                                          comment: 'No comment.',
                                        ),
                                        reviewsRecordReference2);

                                await widget!.shop!.update({
                                  ...mapToFirestore(
                                    {
                                      'shop_reviews': FieldValue.arrayUnion(
                                          [_model.reviewCreated1?.reference]),
                                      'shop_stars': FieldValue.increment(
                                          _model.ratingBarValue!.round()),
                                    },
                                  ),
                                });
                                Navigator.pop(context);
                              }

                              safeSetState(() {});
                            },
                            text: 'Submit Review',
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
      ),
    );
  }
}
