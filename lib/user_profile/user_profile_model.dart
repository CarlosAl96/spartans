import '/components/game_lists_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'user_profile_widget.dart' show UserProfileWidget;
import 'package:flutter/material.dart';

class UserProfileModel extends FlutterFlowModel<UserProfileWidget> {
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
