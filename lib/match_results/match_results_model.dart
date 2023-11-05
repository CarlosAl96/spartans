import '/flutter_flow/flutter_flow_util.dart';
import 'match_results_widget.dart' show MatchResultsWidget;
import 'package:flutter/material.dart';

class MatchResultsModel extends FlutterFlowModel<MatchResultsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for player1Uid widget.
  TextEditingController? player1UidController;
  String? Function(BuildContext, String?)? player1UidControllerValidator;
  // State field(s) for player2Uid widget.
  final player2UidKey = GlobalKey();
  TextEditingController? player2UidController;
  String? player2UidSelectedOption;
  String? Function(BuildContext, String?)? player2UidControllerValidator;
  // State field(s) for winnerUid widget.
  final winnerUidKey = GlobalKey();
  TextEditingController? winnerUidController;
  String? winnerUidSelectedOption;
  String? Function(BuildContext, String?)? winnerUidControllerValidator;
  // State field(s) for looserUid widget.
  final looserUidKey = GlobalKey();
  TextEditingController? looserUidController;
  String? looserUidSelectedOption;
  String? Function(BuildContext, String?)? looserUidControllerValidator;
  // State field(s) for set1Player1 widget.
  TextEditingController? set1Player1Controller;
  String? Function(BuildContext, String?)? set1Player1ControllerValidator;
  // State field(s) for set1Player2 widget.
  TextEditingController? set1Player2Controller;
  String? Function(BuildContext, String?)? set1Player2ControllerValidator;
  // State field(s) for set2Player1 widget.
  TextEditingController? set2Player1Controller;
  String? Function(BuildContext, String?)? set2Player1ControllerValidator;
  // State field(s) for set2Player2 widget.
  TextEditingController? set2Player2Controller;
  String? Function(BuildContext, String?)? set2Player2ControllerValidator;
  // State field(s) for set3Player1 widget.
  TextEditingController? set3Player1Controller;
  String? Function(BuildContext, String?)? set3Player1ControllerValidator;
  // State field(s) for set3Player2 widget.
  TextEditingController? set3Player2Controller;
  String? Function(BuildContext, String?)? set3Player2ControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    player1UidController?.dispose();
    set1Player1Controller?.dispose();
    set1Player2Controller?.dispose();
    set2Player1Controller?.dispose();
    set2Player2Controller?.dispose();
    set3Player1Controller?.dispose();
    set3Player2Controller?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
