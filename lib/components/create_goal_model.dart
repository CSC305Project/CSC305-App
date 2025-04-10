import '/flutter_flow/flutter_flow_util.dart';
import 'create_goal_widget.dart' show CreateGoalWidget;
import 'package:flutter/material.dart';

class CreateGoalModel extends FlutterFlowModel<CreateGoalWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for goalInput widget.
  FocusNode? goalInputFocusNode;
  TextEditingController? goalInputTextController;
  String? Function(BuildContext, String?)? goalInputTextControllerValidator;
  // State field(s) for goalDesc widget.
  FocusNode? goalDescFocusNode;
  TextEditingController? goalDescTextController;
  String? Function(BuildContext, String?)? goalDescTextControllerValidator;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    goalInputFocusNode?.dispose();
    goalInputTextController?.dispose();

    goalDescFocusNode?.dispose();
    goalDescTextController?.dispose();
  }
}
