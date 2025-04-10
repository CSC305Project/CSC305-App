import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'goal_card_widget.dart' show GoalCardWidget;
import 'package:flutter/material.dart';

class GoalCardModel extends FlutterFlowModel<GoalCardWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Firestore Query - Query a collection] action in IconButton widget.
  GoalsRecord? goals;
  // State field(s) for Slider widget.
  double? sliderValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
