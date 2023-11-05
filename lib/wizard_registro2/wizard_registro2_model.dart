import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'wizard_registro2_widget.dart' show WizardRegistro2Widget;
import 'package:flutter/material.dart';

class WizardRegistro2Model extends FlutterFlowModel<WizardRegistro2Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for first_name widget.
  TextEditingController? firstNameController;
  String? Function(BuildContext, String?)? firstNameControllerValidator;
  // State field(s) for last_name widget.
  TextEditingController? lastNameController;
  String? Function(BuildContext, String?)? lastNameControllerValidator;
  // State field(s) for phone_number widget.
  TextEditingController? phoneNumberController;
  String? Function(BuildContext, String?)? phoneNumberControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    firstNameController?.dispose();
    lastNameController?.dispose();
    phoneNumberController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
