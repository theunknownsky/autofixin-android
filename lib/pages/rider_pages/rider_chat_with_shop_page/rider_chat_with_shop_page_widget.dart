import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'rider_chat_with_shop_page_model.dart';
export 'rider_chat_with_shop_page_model.dart';

class RiderChatWithShopPageWidget extends StatefulWidget {
  const RiderChatWithShopPageWidget({
    super.key,
    this.chatShop,
  });

  final ChatsRecord? chatShop;

  static String routeName = 'RiderChatWithShopPage';
  static String routePath = '/riderChatWithShopPage';

  @override
  State<RiderChatWithShopPageWidget> createState() =>
      _RiderChatWithShopPageWidgetState();
}

class _RiderChatWithShopPageWidgetState
    extends State<RiderChatWithShopPageWidget> {
  late RiderChatWithShopPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RiderChatWithShopPageModel());

    _model.chatBoxTextController ??= TextEditingController();
    _model.chatBoxFocusNode ??= FocusNode();
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
          leading: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.pushNamed(RiderChatHistoryPageWidget.routeName);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 30.0,
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 64.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: StreamBuilder<List<UsersRecord>>(
                        stream: queryUsersRecord(
                          queryBuilder: (usersRecord) => usersRecord.where(
                            'uid',
                            isEqualTo: widget.chatShop?.shopReference?.id,
                          ),
                          singleRecord: true,
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            );
                          }
                          List<UsersRecord> containerUsersRecordList =
                              snapshot.data!;
                          // Return an empty Container when the item does not exist.
                          if (snapshot.data!.isEmpty) {
                            return Container();
                          }
                          final containerUsersRecord =
                              containerUsersRecordList.isNotEmpty
                                  ? containerUsersRecordList.first
                                  : null;

                          return Container(
                            width: MediaQuery.sizeOf(context).width * 0.9,
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  valueOrDefault<String>(
                                    containerUsersRecord?.shopName,
                                    'Shop Name',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 24.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 12.0, 0.0, 6.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      context.pushNamed(
                                        RiderAppointmentSheet1Widget.routeName,
                                        queryParameters: {
                                          'shopId': serializeParam(
                                            containerUsersRecord?.reference,
                                            ParamType.DocumentReference,
                                          ),
                                          'shop': serializeParam(
                                            containerUsersRecord,
                                            ParamType.Document,
                                          ),
                                        }.withoutNulls,
                                        extra: <String, dynamic>{
                                          'shop': containerUsersRecord,
                                        },
                                      );
                                    },
                                    text: 'Set an appointment',
                                    options: FFButtonOptions(
                                      width: 150.0,
                                      height: 36.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconAlignment: IconAlignment.end,
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                            fontSize: 10.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w300,
                                          ),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                  ),
                                ),
                                Divider(
                                  thickness: 1.0,
                                  color: Color(0xFFB4ABAB),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: MediaQuery.sizeOf(context).height * 0.68,
                      decoration: BoxDecoration(),
                      child: StreamBuilder<List<MessagesRecord>>(
                        stream: queryMessagesRecord(
                          queryBuilder: (messagesRecord) => messagesRecord
                              .where(
                                'chat',
                                isEqualTo: widget.chatShop?.reference,
                              )
                              .orderBy('timestamp'),
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            );
                          }
                          List<MessagesRecord> listViewMessagesRecordList =
                              snapshot.data!;

                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: listViewMessagesRecordList.length,
                            itemBuilder: (context, listViewIndex) {
                              final listViewMessagesRecord =
                                  listViewMessagesRecordList[listViewIndex];
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 12.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(
                                          valueOrDefault<double>(
                                            listViewMessagesRecord.sender ==
                                                    currentUserReference
                                                ? 1.0
                                                : -1.0,
                                            0.0,
                                          ),
                                          0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.67,
                                          decoration: BoxDecoration(
                                            color: listViewMessagesRecord
                                                        .sender ==
                                                    currentUserReference
                                                ? FlutterFlowTheme.of(context)
                                                    .primary
                                                : FlutterFlowTheme.of(context)
                                                    .formBorderColor,
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                            shape: BoxShape.rectangle,
                                          ),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 12.0, 12.0, 12.0),
                                              child: Text(
                                                listViewMessagesRecord.text,
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: listViewMessagesRecord
                                                                      .sender ==
                                                                  currentUserReference
                                                              ? Colors.white
                                                              : FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(
                                          valueOrDefault<double>(
                                            listViewMessagesRecord.sender ==
                                                    currentUserReference
                                                ? 1.0
                                                : -1.0,
                                            0.0,
                                          ),
                                          0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        child: Text(
                                          dateTimeFormat(
                                              "relative",
                                              listViewMessagesRecord
                                                  .timestamp!),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .hintFontColor,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 70.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 305.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(305.0),
                              bottomRight: Radius.circular(305.0),
                              topLeft: Radius.circular(305.0),
                              topRight: Radius.circular(305.0),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  width: 200.0,
                                  child: TextFormField(
                                    controller: _model.chatBoxTextController,
                                    focusNode: _model.chatBoxFocusNode,
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
                                      hintText: 'Type your message here...',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                        ),
                                    textAlign: TextAlign.start,
                                    cursorColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    validator: _model
                                        .chatBoxTextControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                              FFButtonWidget(
                                onPressed: () {
                                  print('Button pressed ...');
                                },
                                text: '',
                                icon: Icon(
                                  Icons.camera_alt_outlined,
                                  color: Colors.black,
                                  size: 15.0,
                                ),
                                options: FFButtonOptions(
                                  height:
                                      MediaQuery.sizeOf(context).height * 1.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  iconAlignment: IconAlignment.end,
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: Colors.white,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                        letterSpacing: 0.0,
                                      ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(24.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              var messagesRecordReference =
                                  MessagesRecord.collection.doc();
                              await messagesRecordReference.set({
                                ...createMessagesRecordData(
                                  chat: widget.chatShop?.reference,
                                  sender: currentUserReference,
                                  text: _model.chatBoxTextController.text,
                                ),
                                ...mapToFirestore(
                                  {
                                    'timestamp': FieldValue.serverTimestamp(),
                                  },
                                ),
                              });
                              _model.sentMessage =
                                  MessagesRecord.getDocumentFromData({
                                ...createMessagesRecordData(
                                  chat: widget.chatShop?.reference,
                                  sender: currentUserReference,
                                  text: _model.chatBoxTextController.text,
                                ),
                                ...mapToFirestore(
                                  {
                                    'timestamp': DateTime.now(),
                                  },
                                ),
                              }, messagesRecordReference);

                              await widget.chatShop!.reference.update({
                                ...createChatsRecordData(
                                  lastMessageTimestamp:
                                      _model.sentMessage?.timestamp,
                                  lastMessage: _model.sentMessage?.text,
                                ),
                                ...mapToFirestore(
                                  {
                                    'messages': FieldValue.arrayUnion(
                                        [_model.sentMessage?.reference]),
                                  },
                                ),
                              });
                              safeSetState(() {
                                _model.chatBoxTextController?.clear();
                              });

                              safeSetState(() {});
                            },
                            text: '',
                            icon: Icon(
                              Icons.send,
                              size: 20.0,
                            ),
                            options: FFButtonOptions(
                              width: 40.0,
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconAlignment: IconAlignment.end,
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 1.0,
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                        ),
                      ].divide(SizedBox(width: 10.0)),
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
