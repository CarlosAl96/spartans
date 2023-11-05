import '/flutter_flow/flutter_flow_util.dart';
import 'wizard_registro4_widget.dart' show WizardRegistro4Widget;
import 'package:flutter/material.dart';

class WizardRegistro4Model extends FlutterFlowModel<WizardRegistro4Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for biography widget.
  TextEditingController? biographyController;
  String? Function(BuildContext, String?)? biographyControllerValidator;
  // State field(s) for country_club widget.
  TextEditingController? countryClubController;
  String? Function(BuildContext, String?)? countryClubControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    biographyController?.dispose();
    countryClubController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
