import '/flutter_flow/flutter_flow_util.dart';
import 'search_results_widget.dart' show SearchResultsWidget;
import 'package:flutter/material.dart';

class SearchResultsModel extends FlutterFlowModel<SearchResultsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
