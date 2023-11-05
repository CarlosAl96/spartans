import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_profile_widget.dart' show EditProfileWidget;
import 'package:flutter/material.dart';

class EditProfileModel extends FlutterFlowModel<EditProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for first_name widget.
  TextEditingController? firstNameController;
  String? Function(BuildContext, String?)? firstNameControllerValidator;
  // State field(s) for last_name widget.
  TextEditingController? lastNameController;
  String? Function(BuildContext, String?)? lastNameControllerValidator;
  // State field(s) for phoneNumber widget.
  TextEditingController? phoneNumberController;
  String? Function(BuildContext, String?)? phoneNumberControllerValidator;
  // State field(s) for changePassword widget.
  TextEditingController? changePasswordController1;
  late bool changePasswordVisibility1;
  String? Function(BuildContext, String?)? changePasswordController1Validator;
  // State field(s) for changePassword widget.
  TextEditingController? changePasswordController2;
  late bool changePasswordVisibility2;
  String? Function(BuildContext, String?)? changePasswordController2Validator;
  // State field(s) for changePassword widget.
  TextEditingController? clubController;
  String? Function(BuildContext, String?)? changePasswordController3Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    changePasswordVisibility1 = false;
    changePasswordVisibility2 = false;
  }

  void dispose() {
    firstNameController?.dispose();
    lastNameController?.dispose();
    phoneNumberController?.dispose();
    changePasswordController1?.dispose();
    changePasswordController2?.dispose();
    clubController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
