import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'n_p_s_survey_page_widget.dart' show NPSSurveyPageWidget;
import 'package:flutter/material.dart';

class NPSSurveyPageModel extends FlutterFlowModel<NPSSurveyPageWidget> {
  ///  Local state fields for this page.
  /// captures results
  int scoreResults = 0;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
