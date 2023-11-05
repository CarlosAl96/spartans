import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'confirm_result_model.dart';
export 'confirm_result_model.dart';

class ConfirmResultWidget extends StatefulWidget {
  const ConfirmResultWidget({Key? key}) : super(key: key);

  @override
  _ConfirmResultWidgetState createState() => _ConfirmResultWidgetState();
}

class _ConfirmResultWidgetState extends State<ConfirmResultWidget> {
  late ConfirmResultModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConfirmResultModel());

    _model.player1UidController ??= TextEditingController();
    _model.player1UidFocusNode ??= FocusNode();
    _model.player2UidController ??= TextEditingController();

    _model.winnerUidController ??= TextEditingController();

    _model.looserUidController ??= TextEditingController();

    _model.set1Player1Controller ??= TextEditingController();
    _model.set1Player1FocusNode ??= FocusNode();
    _model.set1Player2Controller ??= TextEditingController();
    _model.set1Player2FocusNode ??= FocusNode();
    _model.set2Player1Controller ??= TextEditingController();
    _model.set2Player1FocusNode ??= FocusNode();
    _model.set2Player2Controller ??= TextEditingController();
    _model.set2Player2FocusNode ??= FocusNode();
    _model.set3Player1Controller ??= TextEditingController();
    _model.set3Player1FocusNode ??= FocusNode();
    _model.set3Player2Controller ??= TextEditingController();
    _model.set3Player2FocusNode ??= FocusNode();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return Title(
        title: 'confirmResult',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
              automaticallyImplyLeading: false,
              title: Text(
                'Reporte del partido',
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
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/Group-25_(1).webp',
                            width: 100.0,
                            height: 100.0,
                            fit: BoxFit.cover,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                decoration: BoxDecoration(),
                              ),
                              Container(
                                decoration: BoxDecoration(),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 20.0, 16.0, 20.0),
                                  child: TextFormField(
                                    controller: _model.player1UidController,
                                    focusNode: _model.player1UidFocusNode,
                                    readOnly: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Jugador 1',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .bodySmall,
                                      hintText:
                                          'Ingresa el ID del usuario (Correo electrónico)',
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
                                              16.0, 24.0, 0.0, 24.0),
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                    maxLines: null,
                                    validator: _model
                                        .player1UidControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 20.0, 16.0, 20.0),
                                  child: Autocomplete<String>(
                                    initialValue: TextEditingValue(),
                                    optionsBuilder: (textEditingValue) {
                                      if (textEditingValue.text == '') {
                                        return const Iterable<String>.empty();
                                      }
                                      return <String>[].where((option) {
                                        final lowercaseOption =
                                            option.toLowerCase();
                                        return lowercaseOption.contains(
                                            textEditingValue.text
                                                .toLowerCase());
                                      });
                                    },
                                    optionsViewBuilder:
                                        (context, onSelected, options) {
                                      return AutocompleteOptionsList(
                                        textFieldKey: _model.player2UidKey,
                                        textController:
                                            _model.player2UidController!,
                                        options: options.toList(),
                                        onSelected: onSelected,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        textHighlightStyle: TextStyle(),
                                        elevation: 4.0,
                                        optionBackgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                        optionHighlightColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                        maxHeight: 200.0,
                                      );
                                    },
                                    onSelected: (String selection) {
                                      setState(() =>
                                          _model.player2UidSelectedOption =
                                              selection);
                                      FocusScope.of(context).unfocus();
                                    },
                                    fieldViewBuilder: (
                                      context,
                                      textEditingController,
                                      focusNode,
                                      onEditingComplete,
                                    ) {
                                      _model.player2UidFocusNode = focusNode;
                                      _model.player2UidController =
                                          textEditingController;
                                      return TextFormField(
                                        key: _model.player2UidKey,
                                        controller: textEditingController,
                                        focusNode: focusNode,
                                        onEditingComplete: onEditingComplete,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Jugador 2',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall,
                                          hintText:
                                              'Ingresa el ID del usuario (Correo electrónico)',
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
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
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 24.0, 0.0, 24.0),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        maxLines: null,
                                        validator: _model
                                            .player2UidControllerValidator
                                            .asValidator(context),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 20.0, 16.0, 20.0),
                                  child: Autocomplete<String>(
                                    initialValue: TextEditingValue(),
                                    optionsBuilder: (textEditingValue) {
                                      if (textEditingValue.text == '') {
                                        return const Iterable<String>.empty();
                                      }
                                      return <String>[].where((option) {
                                        final lowercaseOption =
                                            option.toLowerCase();
                                        return lowercaseOption.contains(
                                            textEditingValue.text
                                                .toLowerCase());
                                      });
                                    },
                                    optionsViewBuilder:
                                        (context, onSelected, options) {
                                      return AutocompleteOptionsList(
                                        textFieldKey: _model.winnerUidKey,
                                        textController:
                                            _model.winnerUidController!,
                                        options: options.toList(),
                                        onSelected: onSelected,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        textHighlightStyle: TextStyle(),
                                        elevation: 4.0,
                                        optionBackgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                        optionHighlightColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                        maxHeight: 200.0,
                                      );
                                    },
                                    onSelected: (String selection) {
                                      setState(() => _model
                                          .winnerUidSelectedOption = selection);
                                      FocusScope.of(context).unfocus();
                                    },
                                    fieldViewBuilder: (
                                      context,
                                      textEditingController,
                                      focusNode,
                                      onEditingComplete,
                                    ) {
                                      _model.winnerUidFocusNode = focusNode;
                                      _model.winnerUidController =
                                          textEditingController;
                                      return TextFormField(
                                        key: _model.winnerUidKey,
                                        controller: textEditingController,
                                        focusNode: focusNode,
                                        onEditingComplete: onEditingComplete,
                                        readOnly: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Ganador',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall,
                                          hintText:
                                              'Ingresa el email del ganador',
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
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
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 24.0, 0.0, 24.0),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        maxLines: null,
                                        validator: _model
                                            .winnerUidControllerValidator
                                            .asValidator(context),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 20.0, 16.0, 20.0),
                                  child: Autocomplete<String>(
                                    initialValue: TextEditingValue(),
                                    optionsBuilder: (textEditingValue) {
                                      if (textEditingValue.text == '') {
                                        return const Iterable<String>.empty();
                                      }
                                      return <String>[].where((option) {
                                        final lowercaseOption =
                                            option.toLowerCase();
                                        return lowercaseOption.contains(
                                            textEditingValue.text
                                                .toLowerCase());
                                      });
                                    },
                                    optionsViewBuilder:
                                        (context, onSelected, options) {
                                      return AutocompleteOptionsList(
                                        textFieldKey: _model.looserUidKey,
                                        textController:
                                            _model.looserUidController!,
                                        options: options.toList(),
                                        onSelected: onSelected,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        textHighlightStyle: TextStyle(),
                                        elevation: 4.0,
                                        optionBackgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                        optionHighlightColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                        maxHeight: 200.0,
                                      );
                                    },
                                    onSelected: (String selection) {
                                      setState(() => _model
                                          .looserUidSelectedOption = selection);
                                      FocusScope.of(context).unfocus();
                                    },
                                    fieldViewBuilder: (
                                      context,
                                      textEditingController,
                                      focusNode,
                                      onEditingComplete,
                                    ) {
                                      _model.looserUidFocusNode = focusNode;
                                      _model.looserUidController =
                                          textEditingController;
                                      return TextFormField(
                                        key: _model.looserUidKey,
                                        controller: textEditingController,
                                        focusNode: focusNode,
                                        onEditingComplete: onEditingComplete,
                                        readOnly: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Perdedor',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall,
                                          hintText:
                                              'Ingresa el email del perdedor',
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
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
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 24.0, 0.0, 24.0),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        maxLines: null,
                                        validator: _model
                                            .looserUidControllerValidator
                                            .asValidator(context),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Text(
                                'Set 1',
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 12.0, 16.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 8.0, 0.0),
                                      child: Container(
                                        width: 380.0,
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
                                          child: Wrap(
                                            spacing: 0.0,
                                            runSpacing: 0.0,
                                            alignment: WrapAlignment.start,
                                            crossAxisAlignment:
                                                WrapCrossAlignment.start,
                                            direction: Axis.horizontal,
                                            runAlignment: WrapAlignment.start,
                                            verticalDirection:
                                                VerticalDirection.down,
                                            clipBehavior: Clip.none,
                                            children: [
                                              TextFormField(
                                                controller: _model
                                                    .set1Player1Controller,
                                                focusNode:
                                                    _model.set1Player1FocusNode,
                                                autofocus: true,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: 'Jugador 1',
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmall,
                                                  enabledBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(4.0),
                                                      topRight:
                                                          Radius.circular(4.0),
                                                    ),
                                                  ),
                                                  focusedBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(4.0),
                                                      topRight:
                                                          Radius.circular(4.0),
                                                    ),
                                                  ),
                                                  errorBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(4.0),
                                                      topRight:
                                                          Radius.circular(4.0),
                                                    ),
                                                  ),
                                                  focusedErrorBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(4.0),
                                                      topRight:
                                                          Radius.circular(4.0),
                                                    ),
                                                  ),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                validator: _model
                                                    .set1Player1ControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 380.0,
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
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 5.0, 12.0, 5.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Expanded(
                                              child: TextFormField(
                                                controller: _model
                                                    .set1Player2Controller,
                                                focusNode:
                                                    _model.set1Player2FocusNode,
                                                autofocus: true,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: 'Jugador 2',
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmall,
                                                  enabledBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(4.0),
                                                      topRight:
                                                          Radius.circular(4.0),
                                                    ),
                                                  ),
                                                  focusedBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(4.0),
                                                      topRight:
                                                          Radius.circular(4.0),
                                                    ),
                                                  ),
                                                  errorBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(4.0),
                                                      topRight:
                                                          Radius.circular(4.0),
                                                    ),
                                                  ),
                                                  focusedErrorBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(4.0),
                                                      topRight:
                                                          Radius.circular(4.0),
                                                    ),
                                                  ),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                validator: _model
                                                    .set1Player2ControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: Text(
                                  'Set 2',
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
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
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 8.0, 0.0),
                                      child: Container(
                                        width: 380.0,
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
                                              Expanded(
                                                child: TextFormField(
                                                  controller: _model
                                                      .set2Player1Controller,
                                                  focusNode: _model
                                                      .set2Player1FocusNode,
                                                  autofocus: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText: 'Jugador 1',
                                                    hintStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmall,
                                                    enabledBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                    focusedBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                    errorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                    focusedErrorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                  validator: _model
                                                      .set2Player1ControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 380.0,
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
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 5.0, 12.0, 5.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              child: TextFormField(
                                                controller: _model
                                                    .set2Player2Controller,
                                                focusNode:
                                                    _model.set2Player2FocusNode,
                                                autofocus: true,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: 'Jugador 2',
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmall,
                                                  enabledBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(4.0),
                                                      topRight:
                                                          Radius.circular(4.0),
                                                    ),
                                                  ),
                                                  focusedBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(4.0),
                                                      topRight:
                                                          Radius.circular(4.0),
                                                    ),
                                                  ),
                                                  errorBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(4.0),
                                                      topRight:
                                                          Radius.circular(4.0),
                                                    ),
                                                  ),
                                                  focusedErrorBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(4.0),
                                                      topRight:
                                                          Radius.circular(4.0),
                                                    ),
                                                  ),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                validator: _model
                                                    .set2Player2ControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: Text(
                                  'Set 3',
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
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
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 8.0, 0.0),
                                      child: Container(
                                        width: 380.0,
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
                                              Expanded(
                                                child: TextFormField(
                                                  controller: _model
                                                      .set3Player1Controller,
                                                  focusNode: _model
                                                      .set3Player1FocusNode,
                                                  autofocus: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText: 'Jugador 1',
                                                    hintStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmall,
                                                    enabledBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                    focusedBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                    errorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                    focusedErrorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(
                                                                4.0),
                                                        topRight:
                                                            Radius.circular(
                                                                4.0),
                                                      ),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                  validator: _model
                                                      .set3Player1ControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 380.0,
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
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 5.0, 12.0, 5.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              child: TextFormField(
                                                controller: _model
                                                    .set3Player2Controller,
                                                focusNode:
                                                    _model.set3Player2FocusNode,
                                                autofocus: true,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: 'Jugador 2',
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmall,
                                                  enabledBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(4.0),
                                                      topRight:
                                                          Radius.circular(4.0),
                                                    ),
                                                  ),
                                                  focusedBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(4.0),
                                                      topRight:
                                                          Radius.circular(4.0),
                                                    ),
                                                  ),
                                                  errorBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(4.0),
                                                      topRight:
                                                          Radius.circular(4.0),
                                                    ),
                                                  ),
                                                  focusedErrorBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(4.0),
                                                      topRight:
                                                          Radius.circular(4.0),
                                                    ),
                                                  ),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                validator: _model
                                                    .set3Player2ControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 24.0, 0.0, 16.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                context.pushNamed('SuccessPage');
                              },
                              text: 'Confirmar',
                              options: FFButtonOptions(
                                width: 270.0,
                                height: 50.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).secondary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                                elevation: 3.0,
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).secondary,
                                  width: 1.0,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 16.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                context.pushNamed('SuccessPage');
                              },
                              text: 'Declinar',
                              options: FFButtonOptions(
                                width: 270.0,
                                height: 50.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                                elevation: 3.0,
                                borderSide: BorderSide(
                                  color:
                                      FlutterFlowTheme.of(context).customColor4,
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
          ),
        ));
  }
}
