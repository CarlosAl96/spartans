import '/flutter_flow/flutter_flow_util.dart';
import 'challenge_player_widget.dart' show ChallengePlayerWidget;
import 'package:flutter/material.dart';

class ChallengePlayerModel extends FlutterFlowModel<ChallengePlayerWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for userName widget.
  TextEditingController? userNameController;
  String? Function(BuildContext, String?)? userNameControllerValidator;
  DateTime? datePicked;
  TimeOfDay? hourPicked;
  String error = '';

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    userNameController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
