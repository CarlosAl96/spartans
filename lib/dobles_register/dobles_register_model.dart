import '/flutter_flow/flutter_flow_util.dart';
import 'dobles_register_widget.dart' show DoblesRegisterWidget;
import 'package:flutter/material.dart';

class DoblesRegisterModel extends FlutterFlowModel<DoblesRegisterWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for teamMate widget.
  TextEditingController? teamMateController;
  String? Function(BuildContext, String?)? teamMateControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    teamMateController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
