import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'wizard_registro3_widget.dart' show WizardRegistro3Widget;
import 'package:flutter/material.dart';

class WizardRegistro3Model extends FlutterFlowModel<WizardRegistro3Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for country_club widget.
  TextEditingController? countryClubController;
  String? Function(BuildContext, String?)? countryClubControllerValidator;
  // State field(s) for categoria widget.
  String? categoriaValue;
  FormFieldController<String>? categoriaValueController;
  DateTime? datePicked;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    countryClubController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
