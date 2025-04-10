import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'a_iinsights_widget.dart' show AIinsightsWidget;
import 'package:flutter/material.dart';

class AIinsightsModel extends FlutterFlowModel<AIinsightsWidget> {
  ///  Local state fields for this page.

  String apiResponse = '';

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (geminiAI)] action in Button widget.
  ApiCallResponse? apiResult6vw;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
