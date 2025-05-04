import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_purchase_widget.dart' show AddPurchaseWidget;
import 'package:flutter/material.dart';

class AddPurchaseModel extends FlutterFlowModel<AddPurchaseWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for category widget.
  String? categoryValue;
  FormFieldController<String>? categoryValueController;
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
