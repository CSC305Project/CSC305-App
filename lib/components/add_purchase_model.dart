import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_purchase_widget.dart' show AddPurchaseWidget;
import 'package:flutter/material.dart';

class AddPurchaseModel extends FlutterFlowModel<AddPurchaseWidget> {
  ///  Local state fields for this component.
  /// sends out response to AI AGent
  String? newAgent;

  ///  State fields for stateful widgets in this component.

  // State field(s) for PurchaseNameInput widget.
  FocusNode? purchaseNameInputFocusNode;
  TextEditingController? purchaseNameInputTextController;
  String? Function(BuildContext, String?)?
      purchaseNameInputTextControllerValidator;
  // State field(s) for PurchaseAMTInput widget.
  FocusNode? purchaseAMTInputFocusNode;
  TextEditingController? purchaseAMTInputTextController;
  String? Function(BuildContext, String?)?
      purchaseAMTInputTextControllerValidator;
  // Stores action output result for [Backend Call - API (FinanceElla)] action in PurchaseAMTInput widget.
  ApiCallResponse? apiResultlen;
  // State field(s) for noteInput widget.
  FocusNode? noteInputFocusNode;
  TextEditingController? noteInputTextController;
  String? Function(BuildContext, String?)? noteInputTextControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in addPurchaseButton widget.
  List<TransactionsRecord>? listOfTransactions;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    purchaseNameInputFocusNode?.dispose();
    purchaseNameInputTextController?.dispose();

    purchaseAMTInputFocusNode?.dispose();
    purchaseAMTInputTextController?.dispose();

    noteInputFocusNode?.dispose();
    noteInputTextController?.dispose();
  }
}
