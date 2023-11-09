import 'package:spartans/controllers/auth/auth_controller.dart';
import 'package:spartans/controllers/challenge/challenge_controller.dart';
import 'package:spartans/controllers/users/usersList_controller.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'challenge_player_model.dart';
export 'challenge_player_model.dart';

class ChallengePlayerWidget extends StatefulWidget {
  const ChallengePlayerWidget({Key? key}) : super(key: key);

  @override
  _ChallengePlayerWidgetState createState() => _ChallengePlayerWidgetState();
}

class _ChallengePlayerWidgetState extends State<ChallengePlayerWidget> {
  late ChallengePlayerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  String? time;
  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChallengePlayerModel());

    _model.userNameController ??= TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    final usersProvider = context.watch<UsersListController>();
    final authProvider = context.watch<AuthController>();
    final challengeProvider = context.watch<ChallengeController>();
    return Title(
        title: 'challengePlayer',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
              automaticallyImplyLeading: false,
              title: Text(
                'Solicitar juego',
                style: FlutterFlowTheme.of(context).headlineMedium,
              ),
              actions: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30.0,
                    buttonSize: 48.0,
                    icon: Icon(
                      Icons.close_rounded,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 30.0,
                    ),
                    onPressed: () async {
                      context.pop();
                    },
                  ),
                ),
              ],
              centerTitle: false,
              elevation: 0.0,
            ),
            body: SafeArea(
              top: true,
              child: Align(
                alignment: AlignmentDirectional(0.00, 0.00),
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: 800.0,
                  ),
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Form(
                    key: _model.formKey,
                    autovalidateMode: AutovalidateMode.disabled,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 12.0, 0.0, 0.0),
                              child: Text(
                                authProvider.auth.user!.name +
                                    ' ' +
                                    authProvider.auth.user!.lastName! +
                                    ' vs ' +
                                    usersProvider.userProfile.name +
                                    ' ' +
                                    usersProvider.userProfile.lastName!,
                                style: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
                              ),
                            ),
                            // Padding(
                            //   padding: EdgeInsetsDirectional.fromSTEB(
                            //       16.0, 16.0, 16.0, 0.0),
                            //   child: TextFormField(
                            //     controller: _model.userNameController,
                            //     readOnly: true,
                            //     obscureText: false,
                            //     decoration: InputDecoration(
                            //       labelText: 'Brandon vs Leito',
                            //       labelStyle: FlutterFlowTheme.of(context)
                            //           .headlineSmall
                            //           .override(
                            //             fontFamily: 'Poppins',
                            //             color: FlutterFlowTheme.of(context)
                            //                 .secondaryText,
                            //             fontWeight: FontWeight.normal,
                            //           ),
                            //       enabledBorder: OutlineInputBorder(
                            //         borderSide: BorderSide(
                            //           color: FlutterFlowTheme.of(context)
                            //               .primaryBackground,
                            //           width: 2.0,
                            //         ),
                            //         borderRadius: BorderRadius.circular(8.0),
                            //       ),
                            //       focusedBorder: OutlineInputBorder(
                            //         borderSide: BorderSide(
                            //           color: Color(0x00000000),
                            //           width: 2.0,
                            //         ),
                            //         borderRadius: BorderRadius.circular(8.0),
                            //       ),
                            //       errorBorder: OutlineInputBorder(
                            //         borderSide: BorderSide(
                            //           color: Color(0x00000000),
                            //           width: 2.0,
                            //         ),
                            //         borderRadius: BorderRadius.circular(8.0),
                            //       ),
                            //       focusedErrorBorder: OutlineInputBorder(
                            //         borderSide: BorderSide(
                            //           color: Color(0x00000000),
                            //           width: 2.0,
                            //         ),
                            //         borderRadius: BorderRadius.circular(8.0),
                            //       ),
                            //       contentPadding:
                            //           EdgeInsetsDirectional.fromSTEB(
                            //               20.0, 32.0, 20.0, 12.0),
                            //     ),
                            //     style:
                            //         FlutterFlowTheme.of(context).headlineSmall,
                            //     textAlign: TextAlign.start,
                            //     validator: _model.userNameControllerValidator
                            //         .asValidator(context),
                            //   ),
                            // ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 12.0, 16.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        final _datePickedDate =
                                            await showDatePicker(
                                          context: context,
                                          initialDate: getCurrentTimestamp,
                                          firstDate: getCurrentTimestamp,
                                          lastDate: DateTime(2050),
                                        );

                                        if (_datePickedDate != null) {
                                          safeSetState(() {
                                            _model.datePicked = DateTime(
                                              _datePickedDate.year,
                                              _datePickedDate.month,
                                              _datePickedDate.day,
                                            );
                                          });
                                        }
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.44,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            width: 2.0,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 5.0, 12.0, 5.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                valueOrDefault<String>(
                                                  dateTimeFormat(
                                                    'dd/MM/yyyy',
                                                    _model.datePicked,
                                                    locale: FFLocalizations.of(
                                                            context)
                                                        .languageCode,
                                                  ),
                                                  'Selecciona una fecha',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall,
                                              ),
                                              Icon(
                                                Icons.date_range_outlined,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 12.0, 16.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        final _hourPicked =
                                            await showTimePicker(
                                          context: context,
                                          initialTime:
                                              TimeOfDay(hour: 0, minute: 0),
                                        );

                                        if (_hourPicked != null) {
                                          safeSetState(() {
                                            _model.hourPicked = _hourPicked;
                                            if (_model.hourPicked!.minute
                                                    .toString()
                                                    .length >
                                                1) {
                                              time = _model.hourPicked!.hour
                                                      .toString() +
                                                  ':' +
                                                  _model.hourPicked!.minute
                                                      .toString();
                                            } else {
                                              time = _model.hourPicked!.hour
                                                      .toString() +
                                                  ':' +
                                                  _model.hourPicked!.minute
                                                      .toString() +
                                                  '0';
                                            }
                                          });
                                        }
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.44,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            width: 2.0,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 5.0, 12.0, 5.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                valueOrDefault<String>(
                                                  time != null ? time : null,
                                                  'Selecciona una hora',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall,
                                              ),
                                              Icon(
                                                Icons.av_timer,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        if (challengeProvider.error.isNotEmpty)
                          Center(
                              child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 16.0, 0.0, 0.0),
                                  child: Text(
                                    challengeProvider.error,
                                    style: TextStyle(color: Colors.red),
                                  ))),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              print('Button pressed ...');

                              if (_model.datePicked == null) {
                                _model.error = 'Seleccione una fecha';
                              } else if (_model.hourPicked == null) {
                                _model.error = 'Seleccione una hora';
                              } else {
                                _model.error = '';
                              }

                              if (_model.error.isEmpty) {
                                final response =
                                    await challengeProvider.setChallenge(
                                        authProvider.auth.access!,
                                        usersProvider.userProfile.id,
                                        _model.datePicked!,
                                        _model.hourPicked!);

                                if (response) {
                                  context.pop();
                                }
                              }
                            },
                            text: 'Solicitar',
                            options: FFButtonOptions(
                              width: 270.0,
                              height: 50.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xFF0E0E0E),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
