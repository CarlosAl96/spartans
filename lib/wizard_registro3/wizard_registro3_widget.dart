import 'package:spartans/controllers/auth/register_controller.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'wizard_registro3_model.dart';
export 'wizard_registro3_model.dart';

class WizardRegistro3Widget extends StatefulWidget {
  const WizardRegistro3Widget({Key? key}) : super(key: key);

  @override
  _WizardRegistro3WidgetState createState() => _WizardRegistro3WidgetState();
}

class _WizardRegistro3WidgetState extends State<WizardRegistro3Widget>
    with TickerProviderStateMixin {
  late WizardRegistro3Model _model;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  bool isDateDone = false;
  final animationsMap = {
    'rowOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WizardRegistro3Model());

    _model.countryClubController ??= TextEditingController();

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
    final registerController = context.watch<RegisterController>();
    return Title(
        title: 'WizardRegistro3',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
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
                  context.pop();
                },
              ),
              title: Text(
                'Registro',
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
            body: Form(
              key: _formKey,
              child: Align(
                alignment: AlignmentDirectional(0.00, 0.00),
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: 500.0,
                  ),
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 70.0, 0.0, 30.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/Group-25_(1).webp',
                                    width: 100.0,
                                    height: 100.0,
                                    fit: BoxFit.cover,
                                  ),
                                ],
                              ).animateOnPageLoad(
                                  animationsMap['rowOnPageLoadAnimation']!),
                            ),
                            Text(
                              'Ya casi terminamos',
                              style: FlutterFlowTheme.of(context).displaySmall,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      controller: _model.countryClubController,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: '¿Eres socio de algún club?',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                        hintText:
                                            'Escribe el nombre de tu club',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                16.0, 24.0, 24.0, 24.0),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                      validator: _model
                                          .countryClubControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: FlutterFlowDropDown<String>(
                                      controller:
                                          _model.categoriaValueController ??=
                                              FormFieldController<String>(null),
                                      options:
                                          registerController.categoriesList,
                                      onChanged: (val) => setState(
                                          () => _model.categoriaValue = val),
                                      width: 180.0,
                                      height: 50.0,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF101213),
                                          ),
                                      hintText: 'Selecciona tu categoria',
                                      fillColor: Colors.white,
                                      elevation: 2.0,
                                      borderColor: Color(0xFFF1F4F8),
                                      borderWidth: 2.0,
                                      borderRadius: 0.0,
                                      margin: EdgeInsetsDirectional.fromSTEB(
                                          12.0, 4.0, 12.0, 4.0),
                                      hidesUnderline: true,
                                      isSearchable: false,
                                      isMultiSelect: false,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: Container(
                                decoration: BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    FFButtonWidget(
                                      onPressed: () async {
                                        final _datePickedDate =
                                            await showDatePicker(
                                          context: context,
                                          initialDate: getCurrentTimestamp,
                                          firstDate: DateTime(1900),
                                          lastDate: getCurrentTimestamp,
                                        );

                                        if (_datePickedDate != null) {
                                          safeSetState(() {
                                            _model.datePicked = DateTime(
                                              _datePickedDate.year,
                                              _datePickedDate.month,
                                              _datePickedDate.day,
                                            );
                                            if ((DateTime.now().year -
                                                    _model.datePicked!.year) >
                                                13) {
                                              isDateDone = true;
                                            } else {
                                              isDateDone = false;
                                            }
                                          });
                                        }
                                      },
                                      text: 'Seleccionar fecha de nacimiento',
                                      options: FFButtonOptions(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 16.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Color(0xFF253E4A),
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
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 0.0),
                                      child: Text(
                                        valueOrDefault<String>(
                                          dateTimeFormat(
                                            'yMMMd',
                                            _model.datePicked,
                                            locale: FFLocalizations.of(context)
                                                .languageCode,
                                          ),
                                          'No has seleccionado la fecha',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ),
                                    if (!isDateDone &&
                                        _model.datePicked != null)
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Text(
                                          'Debes tener una edad mayor a 13 años',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 24.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Expanded(
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        final registerProvider =
                                            context.read<RegisterController>();
                                        if (_model.categoriaValue != null &&
                                            _model.datePicked != null &&
                                            isDateDone) {
                                          print(DateFormat('yyyy-MM-dd')
                                              .format(_model.datePicked!));
                                          registerProvider.insertStep3(
                                              _model.countryClubController.text,
                                              _model.categoriaValue!,
                                              DateFormat('yyyy-MM-dd')
                                                  .format(_model.datePicked!));
                                          context.pushNamed(
                                            'WizardRegistro4',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                              ),
                                            },
                                          );
                                        }
                                      },
                                      text: 'Ya casi finalizamos...',
                                      options: FFButtonOptions(
                                        width: 350.0,
                                        height: 50.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
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
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
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
