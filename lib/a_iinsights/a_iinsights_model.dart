import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'a_iinsights_widget.dart' show AIinsightsWidget;
import 'package:flutter/material.dart';

class AIinsightsModel extends FlutterFlowModel<AIinsightsWidget> {
  ///  Local state fields for this page.

  List<MessageStruct> apiResponse = [];
  void addToApiResponse(MessageStruct item) => apiResponse.add(item);
  void removeFromApiResponse(MessageStruct item) => apiResponse.remove(item);
  void removeAtIndexFromApiResponse(int index) => apiResponse.removeAt(index);
  void insertAtIndexInApiResponse(int index, MessageStruct item) =>
      apiResponse.insert(index, item);
  void updateApiResponseAtIndex(int index, Function(MessageStruct) updateFn) =>
      apiResponse[index] = updateFn(apiResponse[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [AI Agent - Send Message to Finance Ella] action in Button widget.
  String? aiElla;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
