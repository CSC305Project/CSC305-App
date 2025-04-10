import '/flutter_flow/flutter_flow_util.dart';
import 'set_goal_widget.dart' show SetGoalWidget;
import 'package:flutter/material.dart';

class SetGoalModel extends FlutterFlowModel<SetGoalWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for setBudgetText widget.
  FocusNode? setBudgetTextFocusNode;
  TextEditingController? setBudgetTextTextController;
  String? Function(BuildContext, String?)? setBudgetTextTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    setBudgetTextFocusNode?.dispose();
    setBudgetTextTextController?.dispose();
  }
}
