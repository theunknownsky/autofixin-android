import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'reviews_model.dart';
export 'reviews_model.dart';

class ReviewsWidget extends StatefulWidget {
  const ReviewsWidget({
    super.key,
    required this.shop,
    required this.shopReviewCount,
  });

  final UsersRecord? shop;
  final int? shopReviewCount;

  @override
  State<ReviewsWidget> createState() => _ReviewsWidgetState();
}

class _ReviewsWidgetState extends State<ReviewsWidget> {
  late ReviewsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReviewsModel());
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
        child: SingleChildScrollView(
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
                padding: EdgeInsetsDirectional.fromSTEB(22.0, 13.0, 22.0, 55.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: Text(
                            'Reviews: ${widget.shop?.shopName}',
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
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RatingBarIndicator(
                              itemBuilder: (context, index) => Icon(
                                Icons.star_rounded,
                                color: FlutterFlowTheme.of(context).primary,
                              ),
                              direction: Axis.horizontal,
                              rating: valueOrDefault<double>(
                                functions.getReviewRatingAverage(
                                    valueOrDefault<int>(
                                      widget.shop?.shopStars,
                                      0,
                                    ),
                                    valueOrDefault<int>(
                                      widget.shopReviewCount,
                                      1,
                                    )),
                                0.0,
                              ),
                              unratedColor:
                                  FlutterFlowTheme.of(context).accent1,
                              itemCount: 5,
                              itemSize: 45.0,
                            ),
                            Text(
                              valueOrDefault<String>(
                                formatNumber(
                                  functions.getReviewRatingAverage(
                                      valueOrDefault<int>(
                                        widget.shop?.shopStars,
                                        0,
                                      ),
                                      valueOrDefault<int>(
                                        widget.shopReviewCount,
                                        1,
                                      )),
                                  formatType: FormatType.custom,
                                  format: '0.0',
                                  locale: '',
                                ),
                                'N/A',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 50.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ].divide(SizedBox(width: 10.0)),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Builder(
                            builder: (context) {
                              final review =
                                  widget.shop?.shopReviews.toList() ?? [];

                              return Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:
                                    List.generate(review.length, (reviewIndex) {
                                  final reviewItem = review[reviewIndex];
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 16.0),
                                    child: StreamBuilder<ReviewsRecord>(
                                      stream:
                                          ReviewsRecord.getDocument(reviewItem),
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

                                        final containerReviewsRecord =
                                            snapshot.data!;

                                        return Container(
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 4.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    StreamBuilder<UsersRecord>(
                                                      stream: UsersRecord
                                                          .getDocument(
                                                              containerReviewsRecord
                                                                  .rider!),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
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
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        );
                                                      },
                                                    ),
                                                    RatingBarIndicator(
                                                      itemBuilder:
                                                          (context, index) =>
                                                              Icon(
                                                        Icons.star_rounded,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                      ),
                                                      direction:
                                                          Axis.horizontal,
                                                      rating:
                                                          containerReviewsRecord
                                                              .rating
                                                              .toDouble(),
                                                      unratedColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent1,
                                                      itemCount: 5,
                                                      itemSize: 30.0,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Text(
                                                containerReviewsRecord.comment,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  );
                                }),
                              );
                            },
                          ),
                        ),
                      ].divide(SizedBox(height: 30.0)),
                    ),
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
