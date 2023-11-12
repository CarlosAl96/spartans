import 'package:spartans/controllers/tournament/tournament_controller.dart';

import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'brakets_singles8_model.dart';
export 'brakets_singles8_model.dart';

class BraketsSingles8Widget extends StatefulWidget {
  const BraketsSingles8Widget({Key? key}) : super(key: key);

  @override
  _BraketsSingles8WidgetState createState() => _BraketsSingles8WidgetState();
}

class _BraketsSingles8WidgetState extends State<BraketsSingles8Widget> {
  late BraketsSingles8Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BraketsSingles8Model());

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

    final tournamentProvider = context.watch<TournamentController>();

    return Title(
        title: 'braketsSingles8',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: Color(0xFF0E0E0E),
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: FlutterFlowTheme.of(context).primaryBtnText,
                  size: 30.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                  context.pushNamed('torneoSingles');
                },
              ),
              title: Text(
                'Llaves',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 22.0,
                    ),
              ),
              actions: [],
              centerTitle: false,
              elevation: 2.0,
            ),
            body: tournamentProvider.tournament.octavos!.matches == null
                ? SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Esta fase aun no se ha iniciado',
                          style: FlutterFlowTheme.of(context).titleMedium,
                        )
                      ],
                    ),
                  )
                : SafeArea(
                    top: true,
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 10.0),
                              child: Image.asset(
                                'assets/images/Group-25_(1).webp',
                                width: 100.0,
                                height: 100.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.00, 0.00),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: Text(
                                  'Octavos de final',
                                  textAlign: TextAlign.center,
                                  style:
                                      FlutterFlowTheme.of(context).titleMedium,
                                ),
                              ),
                            ),
                            ListView(
                              padding: EdgeInsets.zero,
                              primary: false,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: tournamentProvider
                                  .tournament.octavos!.matches!
                                  .map((e) {
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 15.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 150.0,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                          color: e.team1 != ''
                                              ? e.winner != ''
                                                  ? e.team1 == e.winner
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .customColor1
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .customColor3
                                                  : FlutterFlowTheme.of(context)
                                                      .secondaryBackground
                                              : FlutterFlowTheme.of(context)
                                                  .primaryBtnText,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 4.0,
                                              color: Color(0x33000000),
                                              offset: Offset(0.0, 2.0),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(0.00, 0.00),
                                          child: Text(
                                            e.team1,
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 10.0, 0.0),
                                        child: Text(
                                          'vs',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                      ),
                                      Container(
                                        width: 150.0,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                          color: e.team2 != ''
                                              ? e.winner != ''
                                                  ? e.team2 == e.winner
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .customColor1
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .customColor3
                                                  : FlutterFlowTheme.of(context)
                                                      .secondaryBackground
                                              : FlutterFlowTheme.of(context)
                                                  .primaryBtnText,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 4.0,
                                              color: Color(0x33000000),
                                              offset: Offset(0.0, 2.0),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(0.00, 0.00),
                                          child: Text(
                                            e.team2,
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }).toList(),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: SizedBox(
                                width: 200,
                                height: 50,
                                child: FFButtonWidget(
                                  onPressed: () {
                                    print('Button pressed ...');
                                    context.pushNamed('braketsSingles4');
                                  },
                                  text: 'Ver cuartos de final',
                                  options: FFButtonOptions(
                                    width: double.infinity,
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context)
                                        .customColor4,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                        ),
                                    elevation: 2.0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
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
        ));
  }
}
