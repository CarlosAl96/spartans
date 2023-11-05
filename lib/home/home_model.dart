import '/components/game_lists_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for gameLists component.
  late GameListsModel gameListsModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    gameListsModel = createModel(context, () => GameListsModel());
  }

  void dispose() {
    unfocusNode.dispose();
    gameListsModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
